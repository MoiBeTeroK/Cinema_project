class CreateReviews < ActiveRecord::Migration[8.0]
  def change
    create_table :reviews do |t|
      t.references :movie, null: false, foreign_key: true
      t.string :user_name, null: false
      t.integer :rating, null: false
      t.text :review_text, null: false
      t.datetime :review_date, null: false

      t.timestamps
    end
  end
end
