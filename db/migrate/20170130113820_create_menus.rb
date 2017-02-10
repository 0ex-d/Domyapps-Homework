class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.string :item
      t.string :price

      t.timestamps null: false
    end
  end
end
