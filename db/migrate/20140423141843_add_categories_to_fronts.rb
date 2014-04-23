class AddCategoriesToFronts < ActiveRecord::Migration
  def change
  	add_column :fronts, :img4, :string
  	add_column :fronts, :img5, :string
  	add_column :fronts, :img6, :string
  	add_column :fronts, :img7, :string
  	add_column :fronts, :img8, :string
  	add_column :fronts, :img9, :string
  	add_column :fronts, :img10, :string
  	add_column :fronts, :faq, :text
  	add_column :fronts, :shop, :text
  	add_column :fronts, :how, :text
	add_column :fronts, :contact, :text
  	add_column :fronts, :store_loc, :text
  end
end
