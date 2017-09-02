class Article < ActiveRecord::Base
  #this enforces that before object create hits DB there is a title, description and a length validation [adding constraints]
  validates :title, presence: true, length: { minimum: 3, maximum: 50 }
  validates :description, presence: true, length: { minimum: 10, maximum: 300 }
end