def move_rover

    puts "Enter the grid dimensions"
    grid_dimentions = gets.chomp

    puts "enter rover location X coordinate on grid"
    rover_loc_x = gets.chomp

    puts "enter rover location Y coordinate on grid"
    rover_loc_y = gets.chomp

#=begin
    puts "enter the face direction of the rover"
    rover_face = gets.chomp

    puts "enter instructions to move left or right consequtively as LRLRLR"
    instruction = gets.chomp
#=end

    turn_rover(instruction, rover_face, rover_loc_x, rover_loc_y)
    #puts "#{rover_loc_x},#{rover_loc_y}"
end

def turn_rover(instruction, rover_face, rover_loc_x, rover_loc_y)
    puts "Rover location before turning #{instruction} is is #{rover_loc_x},#{rover_loc_y}, facing #{rover_face}"
    #new_rover_face = nil
    index = 0
    while index < instruction.length
        todo = instruction[index]
        if todo == "L"
            if rover_face == "North"
                rover_face = "West"
            elsif rover_face == "West"
                rover_face = "South"
            elsif rover_face == "South"
                rover_face = "East"
            elsif rover_face == "East"
                rover_face = "North"
            end
        end
        if todo == "R"
            if rover_face == "North"
                rover_face = "East"
            elsif rover_face == "East"
                rover_face = "South"
            elsif rover_face == "South"
                rover_face = "West"
            elsif rover_face == "West"
                rover_face = "North"
            end
        end
        if todo == "M"
            if rover_face == "North"
                rover_loc_y = rover_loc_y.to_i+1
            elsif rover_face == "West"
                rover_loc_x = rover_loc_x.to_i-1
            elsif rover_face == "South"
                rover_loc_y = rover_loc_y.to_i-1
            else
                rover_loc_x = rover_loc_x.to_i+1
            end
        end
        index += 1
    end
    puts "Rover Location after turning #{instruction} is #{rover_loc_x},#{rover_loc_y}, facing #{rover_face}"
end

move_rover