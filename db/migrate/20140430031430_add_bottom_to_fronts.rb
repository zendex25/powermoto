class AddBottomToFronts < ActiveRecord::Migration
  def change
  	  	add_column :fronts, :bottom, :text
  end
end
