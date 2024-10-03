def move_rover

    puts "Enter the grid dimensions"
    grid_dimentions = gets.chomp

    puts "enter rover location on grid"
    rover_loc = gets.chomp

    puts "enter instruction to move left"
    instruction = gets.chomp
    turn_left(instruction)

end

def turn_left(instruction)
    puts "turned left with instruction #{instruction}"
end

move_rover