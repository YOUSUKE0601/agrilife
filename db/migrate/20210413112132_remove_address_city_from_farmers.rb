class RemoveAddressCityFromFarmers < ActiveRecord::Migration[5.2]
  def change
    remove_column :farmers, :address_city, :string
  end
end
