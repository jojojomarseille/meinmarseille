class DropOrder < ActiveRecord::Migration[6.0]
  def up
    drop_table :orders
  end

  def down
    create_table :orders do |t|
      t.string :table_column
      t.references :anothertable

      t.timestamps
    end
    add_index :tablenames, :anothertable_id
  end

end
