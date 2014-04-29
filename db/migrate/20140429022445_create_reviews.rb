class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :name
      t.integer :stars
      t.text :camment
      t.string :rails
      t.string :g
      t.string :resource
      t.string :review
      t.string :name
      t.integer :stars
      t.text :comment
      t.references :wine, index: true

      t.timestamps
    end
  end
end
