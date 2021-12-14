class Profile < ApplicationRecord
  has_one_attached :image
  belongs_to :user

  validates :name, presence: true, length: {maximum: 15}
  validates :learning_history, presence: true, length: {maximum: 2} 
  validates :purpose, presence: true, length: {maximum: 30}
   
end



