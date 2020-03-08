class CreateFlats < ActiveRecord::Migration[5.2]
  def change
    create_table :flats do |t|
      t.string :title
      t.text :description
      t.string :address
      t.string :photo
      t.integer :price_day
      t.references :country, foreign_key: true
      t.references :user, foreign_key: true
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
