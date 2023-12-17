class AddAuthorName < ActiveRecord::Migration[6.0]
  def change
    # don't need movies
    drop_table :movies
    add_column :arts, :author, :text
  end
end
