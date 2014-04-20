class AddTitleToSupport < ActiveRecord::Migration
  def change
  	add_column :supports, :title, :string
  end
end
