class CreateLegals < ActiveRecord::Migration[6.0]
  def change
    create_table :legals do |t|
      t.string :title
      t.text :texte

      t.timestamps
    end
  end
end
