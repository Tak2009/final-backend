class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.references :latinamerica, null: false, foreign_key: true
      t.string :comment
      t.integer :rating, default: 0

      t.timestamps
    end
  end
end
