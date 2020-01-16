class AddCatagoryRefToProducts < ActiveRecord::Migration[6.0]
  def change
    add_reference :products, :catagory, null: true, foreign_key: true
  end
end
