class User < ApplicationRecord
    validates :username, presence: true
    validates :username, format: { with: /\A[a-zA-Z]+\z/,
    message: "only allows letters" }
    validates :username, length: {minimum: 2}

    has_many :posts
    has_many :comments
end
