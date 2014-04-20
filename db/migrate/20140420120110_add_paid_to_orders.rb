class AddPaidToOrders < ActiveRecord::Migration
  def change
  	add_column :orders, :paid, :string
  end
end
