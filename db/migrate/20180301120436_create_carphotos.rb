class CreateCarphotos < ActiveRecord::Migration[5.1]
  def change
    create_table :carphotos do |t|
      t.string :photo
      t.references :car, foreign_key: true

      t.timestamps
    end
  end
end
