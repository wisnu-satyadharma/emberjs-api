class Invitation < ApplicationRecord
	validates :email, uniqueness: true, presence: true
end
