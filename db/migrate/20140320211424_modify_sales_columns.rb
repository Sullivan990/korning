class ModifySalesColumns < ActiveRecord::Migration
  def up
    remove_column :sales, :sale_date, :date
    remove_column :sales, :sale_amount, :numeric
    remove_column :sales, :units_sold, :integer
    remove_column :sales, :invoice_no, :string
    remove_column :sales, :invoice_frequency, :string
    add_column :sales, :sale_date, :date, null: false
    add_column :sales, :sale_amount, :numeric, null: false
    add_column :sales, :units_sold, :integer, null: false
    add_column :sales, :invoice_no, :integer, null: false
    add_column :sales, :invoice_frequency, :string, null: false
  end
  def down
    remove_column :sales, :sale_date, :date, null: false
    remove_column :sales, :sale_amount, :numeric, null: false
    remove_column :sales, :units_sold, :integer, null: false
    remove_column :sales, :invoice_no, :integer, null: false
    remove_column :sales, :invoice_frequency, :string, null: false
    add_column :sales, :sale_date, :date
    add_column :sales, :sale_amount, :numeric
    add_column :sales, :units_sold, :integer
    add_column :sales, :invoice_no, :string
    add_column :sales, :invoice_frequency, :string
  end
end
