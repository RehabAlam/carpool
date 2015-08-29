class User < ActiveRecord::Base
	has_many :notifications
	has_many :carpoolingrequests

	validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
	validates :age, inclusion: { in: 0..99 }
	validates :phone, format: { with: /\d{3}-\d{3}-\d{4}/, message: "wrong format" }
end
