module StaticPagesHelper
	def first_service?(service)
		@first_service.id.eql? service.id
	end

	def tasks
		tasks = []
		@clients.each do |client|
			tasks << client.task_list 
		end
		tasks.flatten.map {|x| x.split(" ").join("-") }.uniq
	end

	def client_tasks(client)
		client.task_list.map {|x| x.split(" ").join("-") }
	end
end
