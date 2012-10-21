class Category < ActiveRecord::Base
  attr_accessible :description, :name, :status

  has_many :posts
end
