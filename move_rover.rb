def turn_rover_left(direction)
    if direction == 'n'
        return 'w'
    elsif direction == 'w'
        return 's'
    elsif direction == 's'
        return 'e'
    elsif direction == 'e'
        return 'n'
    end
end

def turn_rover_right(direction)
    if direction == 'n'
        return 'e'
    elsif direction == 'e'
        return 's'
    elsif direction == 's'
        return 'w'
    elsif direction == 'w'
        return 'n'
    end
end

def move_forward(x,y,direction)
    if direction == 'n'
        return 'x,y+1'
    elsif direction == 'e'
        return 'x+1,y'
    elsif direction == 's'
        return 'x,y-1'
    elsif direction == 'w'
        return 'x-1,y'
    end
end