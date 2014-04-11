class Client < ActiveRecord::Base
	acts_as_taggable_on :tasks
	has_one :contact, :dependent => :destroy

	validates_presence_of :name, :task_list
end
