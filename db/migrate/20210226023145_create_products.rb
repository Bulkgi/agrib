class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :product,                  null: false      
      t.text :description,                null: false    
      t.integer :price,                   null: false   
      t.integer :amount,                  null: false     
      t.integer :unit_id,                 null: false 
      t.references :farmer_user,          null: false, foreign_key: true 
      t.timestamps
    end
  end
end
