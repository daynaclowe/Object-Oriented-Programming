class Rover

	attr_accessor :x, :y, :direction

	def initialize(x,y,direction)
		@x = x
		@y = y
		@direction = direction
	end

	def read_instruction(instruction) 
		if instruction == "M"
			move
		elsif instruction == "L"
			turn_left
		elsif instruction == "R"
			turn_right
		else 
			puts "Instruction not recognized."
		end
	end

	def move
		if @direction == "N"
			@y += 1
		elsif @direction == "E"
			@x += 1
		elsif @direction == "S"
			@y -= 1
		elsif @direction == "W"
			@x -= 1
		end
	end

	def turn_left
		if @direction == "N"
			@direction = "W"
		elsif @direction == "E"
			@direction = "N"
		elsif @direction == "S"
			@direction = "E"
		elsif @direction == "W"
			@direction = "S"
		end
	end

	def turn_right
		if @direction == "N"
			@direction = "E"
		elsif @direction == "E"
			@direction = "S"
		elsif @direction == "S"
			@direction = "W"
		elsif @direction == "W"
			@direction = "N"
		end
	end
end

rover = Rover.new(0,0,"N")
puts "Rover's current position is #{rover.x}, #{rover.y}, facing #{rover.direction}"

# puts "Please provide a direction: L or R, or M for move."
# user_input = gets.chomp.capitalize
# rover.read_instruction(user_input)
# puts "Rover's new position is #{rover.x}, #{rover.y}, facing #{rover.direction}"
# note: replaced above with while loop

while true
user_input = gets.chomp
rover.read_instructions(user_input)
puts "Rover's new position is #{rover.x}, #{rover.y}, facing #{rover.direction}"
puts rover
end



# def rover_position(user_input)
# 	if 
# 	end
# end want to create a method to hold user input for movement


# rover.read_instruction("L")
# puts "Rover's new position is #{rover.x}, #{rover.y}, facing #{rover.direction}"

# rover.read_instruction("M")
