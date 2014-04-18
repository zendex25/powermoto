class CreateFronts < ActiveRecord::Migration
  def change
    create_table :fronts do |t|
      t.string :img1
      t.string :img2
      t.string :img3
      t.text :about
      t.text :company
      t.text :services
      t.string :dealer

      t.timestamps
    end
  end
end
