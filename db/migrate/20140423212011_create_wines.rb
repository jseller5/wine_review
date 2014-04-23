class CreateWines < ActiveRecord::Migration
  def change
    create_table :wines do |t|
      t.string :title
      t.integer :year
      t.string :winery
      t.string :country
      t.string :varietal

      t.timestamps
    end
  end
end
