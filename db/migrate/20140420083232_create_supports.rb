class CreateSupports < ActiveRecord::Migration
  def change
    create_table :supports do |t|
      t.string :name
      t.text :body
      t.string :email
      t.string :contact

      t.timestamps
    end
  end
end
