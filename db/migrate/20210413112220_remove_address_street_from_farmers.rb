class RemoveAddressStreetFromFarmers < ActiveRecord::Migration[5.2]
  def change
    remove_column :farmers, :address_street, :string
  end
end
