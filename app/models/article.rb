class Article < ApplicationRecord
   
  validates :title, :author, presence: true


  has_many :images
  has_many :suppliers

  accepts_nested_attributes_for :images
end
