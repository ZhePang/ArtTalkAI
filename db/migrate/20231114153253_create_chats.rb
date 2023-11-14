class CreateChats < ActiveRecord::Migration[6.0]
  def change
    create_table :chats do |t|
      t.json :history
      t.string :q_and_a, array: true, default: []

      t.timestamps
    end
  end
end
