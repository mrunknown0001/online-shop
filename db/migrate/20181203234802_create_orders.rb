class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
    	t.integer :product_id
    	t.integer :product_quantity
    	t.float :product_price
    	t.float :total
    	t.string :remarks
      t.timestamps
    end
  end
end
