class RemoveAddressBuildingFromFarmers < ActiveRecord::Migration[5.2]
  def change
    remove_column :farmers, :address_building, :string
  end
end
