class Post < ActiveRecord::Base
  attr_accessible :description, :title, :category_id
  
  #relatioshisps
  belongs_to :category

  #validators
  validates_presence_of :title, :category_id

  #others
  self.per_page  = 5

end
