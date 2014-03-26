class ReplaceProductInSalesWithId < ActiveRecord::Migration
  def up
    remove_column :sales, :product_name
    add_column :sales, :product_id, :integer, presence: true
  end

  def down
    remove_column :sales, :product_id
    add_column :sales, :product_name, :string
  end
end
