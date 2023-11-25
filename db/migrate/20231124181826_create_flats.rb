class CreateFlats < ActiveRecord::Migration[7.1]
  def change
    create_table :flats do |t|
      t.string :title
      t.text :description
      t.text :amenities
      t.decimal :price
      t.boolean :availability

      t.timestamps
    end
  end
end
