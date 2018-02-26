class CreateCars < ActiveRecord::Migration[5.1]
  def change
    create_table :cars do |t|
      t.string :make
      t.string :model
      t.integer :year
      t.integer :mileage
      t.string :color
      t.float :price_per_day
      t.string :location
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
