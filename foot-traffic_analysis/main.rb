class User
	attr_reader :id, :room, :status, :time

	def initialize(id, room, status, time)	
		@id = id
		@room = room
		@status = status
		@time = time
	end
end
@users = [] 

def populate
	File.open("data.txt", "r") do |infile|
		total_entries = infile.readline
		while (line = infile.gets)
			user, room, user_status, time = line.split(" ")
			x = User.new( user, room, user_status, time )
			@users.push(x)
		end
	end
end

def align
	@users.sort_by! do | user |
		[ user.room, user.status ]
	end
end

def print
	@users.each do | u |
		puts u.room + u.status
	end
end
