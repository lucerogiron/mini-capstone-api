class AddSupplierIdToProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :supplier_id, :integer
    remove_column :suppliers, :supplier_id
  end
end
