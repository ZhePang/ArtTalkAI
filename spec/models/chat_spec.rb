require 'rails_helper'

RSpec.describe Chat, type: :model do
  describe "chat model" do
    it "initialize chat object and create initial prompt" do
      chat1 = Chat.new
      chat1.create_initial_prompt("Epic Art Title", "Epic Art Author")
      chat1.save
      expect(chat1.initial_prompt).to include("You are a guide who introduces fun facts about the painting")
      expect(chat1.welcome).to include("Hi there! What do you want to know about the painting")
      expect(chat1.title).to include("Title")
    end

    it "initialize chat object and execute message" do
      chat2 = Chat.new
      chat2.q_and_a = [["question 1", "answer 1"], ["question 2", "answer 2"]]
      chat2.create_initial_prompt("Columbia University Title", "Student Author")
      chat2.save
      chat2.message=("Columbia University message")
      chat2.save
      expect(chat2.initial_prompt).to include("You are a guide who introduces fun facts about the painting")
      expect(chat2.welcome).to include("Hi there! What do you want to know about the painting")
      expect(chat2.title).to include("Title")
      # test actually calls chatGPT so just checking generically
      # that some message came back from chatGPT.
      expect(chat2.history["history"].join()).to include("message")
      expect(chat2.history["prompt"]).to include("message")
      expect(chat2.q_and_a.join()).to include("message")
    end

  end
end
