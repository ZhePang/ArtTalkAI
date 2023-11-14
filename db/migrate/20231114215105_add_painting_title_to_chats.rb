class AddPaintingTitleToChats < ActiveRecord::Migration[6.0]
  def change
    add_column :chats, :title, :text
  end
end
