class Chat < ApplicationRecord
    attr_accessor :message

    def create_initial_prompt(art_title)
        # Construct the prompt using the art title
        self.initial_prompt = "You are a guide who introduces fun facts about the painting '#{art_title}'."
        self.welcome = "Hi there! What do you want to know about the painting '#{art_title}'?"
        self.title = art_title
        # Additional logic to call ChatGPT with the prompt, if necessary
    end

    def message=(message)
        self.history = { 'prompt' => message, 'history' => [] } if history.blank?

        messages = [
            { 'role' => 'system', 'content' => self.initial_prompt },
            { 'role' => 'system', 'content' => history['prompt'] },
            { 'role' => 'assistant', 'content' => self.welcome }
        ]
        q_and_a.each do |question, answer|
            messages << { 'role' => 'user', 'content' => question }
            messages << { 'role' => 'assistant', 'content' => answer }
        end
        messages << { 'role' => 'user', 'content' => message } if messages.size > 1


        response_raw = client.chat(
            parameters: {
                model: 'gpt-3.5-turbo',
                messages: messages,
                temperature: 0.7,
                max_tokens: 500,
                top_p: 1,
                frequency_penalty: 0.0,
                presence_penalty: 0.6
            }
        )


        self.history['history'] << response_raw

        Rails.logger.debug response_raw
        response = JSON.parse(response_raw.to_json, object_class: OpenStruct)

        self.q_and_a << [message, response.choices[0].message.content]
    end

    private

    def client
        OpenAI::Client.new
    end
end
