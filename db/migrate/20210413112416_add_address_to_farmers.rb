class AddAddressToFarmers < ActiveRecord::Migration[5.2]
  def change
    add_column :farmers, :address, :string
  end
end
