class CreateMovies < ActiveRecord::Migration[8.0]
  def change
    create_table :movies do |t|
      t.string :title, null: false
      t.integer :duration, null: false
      t.string :age_rating, null: false
      t.date :release_date, null: false

      t.timestamps
    end
  end
end
