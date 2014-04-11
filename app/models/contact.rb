class Contact < ActiveRecord::Base
  belongs_to :client

  validates_presence_of :client_id, :name, :occupation, :telephone
end
