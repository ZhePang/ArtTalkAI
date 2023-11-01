class Changearttablename < ActiveRecord::Migration[6.0]
  def change
    rename_table :art, :arts
  end
end
