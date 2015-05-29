class Dungeon
	attr_accessor :player

	def initialize#(name)
		a = true
		while(a)
			print "Input name: "
			name = gets.chomp
			if(name != "")
				@player = Player.new(name)
				a = false
			else
				puts "Invalid name, please input again"
			end
		end
		@rooms = []
	end

	def start
		puts "Hello #{@player.name}, welcome to Dungeon game"
		a = true
		while(a)
			print "Please choose a place to start: "
			pos = gets.chomp.to_sym	
			if(find_place(pos) != nil)
				@player.current_pos = pos
				show_current_description
				a = false		
			else	
				puts "Wrong!!! Please try again"	
			end
		end
	end

	def show_current_description
		puts "  #{@player.current_pos.upcase}"
		puts "You are at a #{(find_place(@player.current_pos)).room_desc}"
	end

	def add_room(reference, place, description, direction)
		@rooms << Room.new(reference, place, description, direction)
	end

	def find_place(plc)
		@rooms.detect {|rm| rm.room == plc}
	end

	def find_place_in_direct(dir)
		#puts find_place(@player.current_pos).class
		if find_place(@player.current_pos).direct[0] == dir
			puts "Can go"
			@player.current_pos = find_place(player.current_pos).next_pos[0]
			show_current_description
			go
		else
			puts "Wrong!!! You can't go this way"
		end
		
	end

	def go
		print "Enter direction that you want to go: "
		direct = gets.chomp.to_sym
		puts "\n You go #{direct}"
		find_place_in_direct(direct)
	end

	private :find_place, :show_current_description
end

class Room
	attr_accessor :room, :room_name, :room_desc, :direct, :next_pos 

	def initialize(room, room_name, room_desc, hash)
		@room = room
		@room_name = room_name
		@room_desc = room_desc
		@hash = hash
		@direct = @hash.keys
		@next_pos = @hash.values
	end
end

class Player
	attr_accessor :name, :current_pos

	def initialize(name)
		@name = name
	end	
end

a = Dungeon.new
#puts a.player.inspect
a.add_room(:hawaii, "hawaii", "beautiful paradise", {:west => :america})
a.add_room(:america, "america", "freedom country", {:east => :hawaii})
a.start
#a.find_place(:america)
#a.show_current_description
a.go
#a.show_current_description
#a.go(:west)
#a.show_current_description
#a.go(:west)
