class Post < ApplicationRecord
  validates :content, {presence: true, length:{maximum: 255}}



  has_many :likes, dependent: :destroy
  belongs_to :user
end
