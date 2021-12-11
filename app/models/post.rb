class Post < ApplicationRecord
    has_many_attached :images
    belongs_to :user

    validates :content, presence: true
end
