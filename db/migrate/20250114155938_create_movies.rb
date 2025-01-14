class CreateMovies < ActiveRecord::Migration[8.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :duration
      t.string :age_rating
      t.date :release_date

      t.timestamps
    end
  end
end
