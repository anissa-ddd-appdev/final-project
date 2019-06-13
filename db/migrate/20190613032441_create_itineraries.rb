class CreateItineraries < ActiveRecord::Migration[5.1]
  def change
    create_table :itineraries do |t|
      t.string :name
      t.string :photo
      t.string :url
      t.string :description
      t.integer :length
      t.string :country
      t.integer :region_id
      t.integer :owner_id
      t.string :travel_time

      t.timestamps
    end
  end
end
