class Employee < ActiveRecord::Base
  validation :first_name, presence: true
  validation :last_name, presence: true
  validation :email, presence: true
end
