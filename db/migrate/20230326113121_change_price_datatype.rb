class ChangePriceDatatype < ActiveRecord::Migration[7.0]
  def change
    change_column :courses, :price, 'float USING CAST(price AS float)'
  end
end
