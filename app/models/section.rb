class Section < ActiveRecord::Base
  belongs_to :service

  validates_presence_of :name, :description
end
