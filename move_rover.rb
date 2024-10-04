def move_rover

    puts "Enter the grid dimensions"
    grid_dimentions = gets.chomp

    puts "enter rover location on grid"
    rover_loc = gets.chomp

    puts "enter the face direction of the rover"
    rover_face = gets.chomp

    puts "enter instructions to move left or right consequtively as LRLRLR"
    instructions = gets.chomp

    turn_rover(instructions, rover_face)
end

def turn_rover(instructions, rover_face)
    instructions.each { |c|
        #puts "turned left with instruction #{instruction}"
    }
end

move_rover