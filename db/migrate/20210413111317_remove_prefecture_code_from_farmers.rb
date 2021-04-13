class RemovePrefectureCodeFromFarmers < ActiveRecord::Migration[5.2]
  def change
    remove_column :farmers, :prefecture_code, :integer
  end
end
