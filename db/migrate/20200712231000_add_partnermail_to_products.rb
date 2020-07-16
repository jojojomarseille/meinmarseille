class AddPartnermailToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :partnermail, :string
  end
end
