class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :user_name
      t.text :body
      t.integer :pickup_adult_id

      t.timestamps null: false
    end
  end
end
