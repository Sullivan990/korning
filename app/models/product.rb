class Product < ActiveRecord::Base
  validation :name, presence: true
end
