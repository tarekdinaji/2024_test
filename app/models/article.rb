class Article < ApplicationRecord

  validates :title, :author, presence: true


  has_many :images

  accepts_nested_attributes_for :images
end
