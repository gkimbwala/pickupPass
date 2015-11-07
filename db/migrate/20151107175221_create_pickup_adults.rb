class CreatePickupAdults < ActiveRecord::Migration
  def change
    create_table :pickup_adults do |t|
      t.string :name
      t.text :description
      t.string :picture

      t.timestamps null: false
    end
  end
end
