class ChangeContenuToBeStringInContacts < ActiveRecord::Migration[6.0]
  def change
    change_column :contacts, :contenu, :string
  end
end
