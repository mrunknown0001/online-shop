class CreatePayments < ActiveRecord::Migration[5.2]
  def change
    create_table :payments do |t|
    	t.integer :user_id
    	t.string :payment_reference
    	t.float :payment
    	t.text :notes
      t.timestamps
    end
  end
end
