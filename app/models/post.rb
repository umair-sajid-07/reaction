class Post < ApplicationRecord
    has_many :comments
    belongs_to :user
    validates :title, presence: true
    validates :body, presence: true, length: { minimum: 10 }
    validates :status, presence:true
end
