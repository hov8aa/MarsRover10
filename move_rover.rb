def turn_rover_left(direction)
    if direction == 'N'
        return 'W'
    elsif direction == 'W'
        return 'S'
    elsif direction == 'S'
        return 'E'
    elsif direction == 'E'
        return 'N'
    end
end

def turn_rover_right(direction)
    if direction == 'N'
        return 'E'
    elsif direction == 'E'
        return 'S'
    elsif direction == 'S'
        return 'W'
    elsif direction == 'W'
        return 'N'
    end
end

def move_forward(x,y,direction)
    if direction == 'N'
        return 'x,y+1'
    elsif direction == 'E'
        return 'x+1,y'
    elsif direction == 'S'
        return 'x,y-1'
    elsif direction == 'W'
        return 'x-1,y'
    end
        puts "#{x},#{y},#{direction}"
end

def continuous_movement(instructions, rover_face)
    i = 0
    while i < instructions.length do
        if instructions[i] == 'L'
            rover_face = turn_rover_left(rover_face)
        elsif instructions[i] == 'R'
            rover_face = turn_rover_right(rover_face)
        elsif instructions[i] == 'M'
            #DoNothing
        end
        i = i+1
    end
    return rover_face
end


def find_respective_location(x,y,rover_face,instructions)
#=begin
    i = 0
    while i < instructions.length do
        if instructions[i] == 'L'
            rover_face = turn_rover_left(rover_face)
        elsif instructions[i] == 'R'
            rover_face = turn_rover_right(rover_face)
        elsif instructions[i] == 'M'
            x,y = move_forward(x,y,rover_face)
            puts "#{x},#{y},#{rover_face}"
        end
        i = i+1
    end
#=end
    return x,y,rover_face
end
