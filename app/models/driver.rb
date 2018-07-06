class Driver < ApplicationRecord
    has_many :simulations
    has_secure_password
    validates :password, presence: true, length: { minimum: 6 }
end
