class CreateMovies < ActiveRecord::Migration[6.0]


  def up

    # TODO delete this later when we don't need movies for the initial page anymore
    # TODO jlc2332
    create_table :movies do |t|
      t.string :title
      t.string :rating
      t.text :description
      t.datetime :release_date
      # Add fields that let Rails automatically keep track
      # of when movies are added or modified:
      t.timestamps
    end
  end

  def down
    drop_table :movies
  end
end
