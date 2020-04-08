class User < ApplicationRecord
    has_many :microposts
    validates :name, presence: true
    validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i },
                      presence: true
end
