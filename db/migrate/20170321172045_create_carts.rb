class CreateCarts < ActiveRecord::Migration[5.0]
  def up
    create_table :carts do |t|

      t.timestamps
    end
  end

  def down
    drop_table :carts
  end
end
