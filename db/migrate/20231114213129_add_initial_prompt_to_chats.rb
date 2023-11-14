class AddInitialPromptToChats < ActiveRecord::Migration[6.0]
  def change
    add_column :chats, :initial_prompt, :text
  end
end
