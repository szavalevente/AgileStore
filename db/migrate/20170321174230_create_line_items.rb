class CreateLineItems < ActiveRecord::Migration[5.0]
  def up
    create_table :line_items do |t|
      t.references :product, foreign_key: true
      t.belongs_to :cart, foreign_key: true

      t.timestamps
    end
  end

  def down
    remove_foreign_key "line_items", "carts"
    remove_foreign_key "line_items", "products"
    drop_table :line_items
  end
end
