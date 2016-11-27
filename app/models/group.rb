class Group < ApplicationRecord
	belongs_to :user
	hos_many :posts
	validates :title, presence: true
end
