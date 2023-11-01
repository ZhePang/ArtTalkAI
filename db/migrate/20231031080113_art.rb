class Art < ActiveRecord::Migration[6.0]
  def change

      ## create art table
      create_table :art do |t|
        t.string :title
        t.text :description
        t.text :link
        t.datetime :release_date
        # Add fields that let Rails automatically keep track
        # of when movies are added or modified:
        t.timestamps
      end
  end
end
