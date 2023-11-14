class AddWelcomingToChats < ActiveRecord::Migration[6.0]
  def change
    add_column :chats, :welcome, :text
  end
end
