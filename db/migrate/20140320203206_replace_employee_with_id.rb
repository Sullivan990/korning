class ReplaceEmployeeWithId < ActiveRecord::Migration
  def up
    remove_column :sales, :employee
    add_column :sales, :employee_id, :integer, presence: true
  end

  def down
    remove_column :sales, :employee_id
    add_column :sales, :employee, :string
  end
end
