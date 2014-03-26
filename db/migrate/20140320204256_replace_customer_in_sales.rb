class ReplaceCustomerInSales < ActiveRecord::Migration
  def up
    remove_column :sales, :customer_and_account_no
    add_column :sales, :customer_id, :integer, presence: true
  end

  def down
    remove_column :sales, :customer_id
    add_column :sales, :customer_and_account_no, :string
  end
end
