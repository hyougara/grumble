class Like < ApplicationRecord
  validates, presence: true 
  belongs_to :user
  belongs_to :post
end
