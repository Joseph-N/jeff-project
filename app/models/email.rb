class Email < ActiveRecord::Base
	validates_presence_of :subject, :name, :email, :message
	validates :email, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/ }
end
