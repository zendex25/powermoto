class AddDetailsToProducts < ActiveRecord::Migration
  def change
  	 add_column :products, :country, :string
  	 add_column :products, :category, :string
  end
end
