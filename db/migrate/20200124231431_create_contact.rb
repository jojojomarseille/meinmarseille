class CreateContact < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|
      t.string :sujet
      t.integer :contenu

      t.timestamps
    end
  end
end
