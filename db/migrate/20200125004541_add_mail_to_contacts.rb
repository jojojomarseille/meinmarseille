class AddMailToContacts < ActiveRecord::Migration[6.0]
  def change
    add_column :contacts, :mail, :string
  end
end
