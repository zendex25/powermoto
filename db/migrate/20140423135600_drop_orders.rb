class DropOrders < ActiveRecord::Migration
  def up
  	drop_table :orders
  end

  def down
  	create_table :orders do |t|
      t.string :name
      t.text :address
      t.string :email
      t.string :pay_type
      t.string :contact
      t.string :paid

      t.timestamps
    end
  end
end