def move_rover

    puts "Enter the grid dimensions"
    grid_dimentions = gets.chomp

    puts "enter rover location on grid"
    rover_loc = gets.chomp

    puts "enter the face direction of the rover"
    rover_face = gets.chomp

    puts "enter instructions to move left or right consequtively as left / right"
    instruction = gets.chomp

    turn_rover(instruction, rover_face)
end

def turn_rover(instruction, rover_face)
    puts "Rover face before turning #{instruction} is #{rover_face}"
    if instruction == "left"
        if rover_face == "North"
            new_rover_face = "West"
        end
        if rover_face == "West"
            new_rover_face = "South"
        end
        if rover_face == "South"
            new_rover_face = "East"
        end
        if rover_face == "East"
            new_rover_face = "North"
        end
    end
    if instruction == "right"
        if rover_face == "North"
            new_rover_face = "East"
        end
        if rover_face == "East"
            new_rover_face = "South"
        end
        if rover_face == "South"
            new_rover_face = "West"
        end
        if rover_face == "West"
            new_rover_face = "North"
        end
    end    
    puts "Rover face after turning #{instruction} is #{new_rover_face}"
end

move_rover