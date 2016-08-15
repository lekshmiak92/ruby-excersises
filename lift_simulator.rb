def start_simulation
  puts "enter the lift position"
  $lift_position = gets.to_i
  puts "enter the user position_1"
  $user_position_1 = gets.to_i
  puts "enter the destination_1 "
  $destination_1 = gets.to_i
  puts "enter the user position_2"
  $user_position_2 = gets.to_i
  puts "enter the destination_2 "
  $destination_2 = gets.to_i
end

def move_down(upper_level, lower_level)
  until upper_level < lower_level do 
    puts upper_level
    upper_level -=1
  end
  door_control
end

def move_up(upper_level, lower_level)
  until lower_level > upper_level do
    puts lower_level
    lower_level +=1
  end
  door_control
end

def door_control
  puts " DO "
  puts " DC "
end

def lift_arrival(lift_position, user_position)
  if lift_position > user_position
    move_down(lift_position, user_position)
  end
  if lift_position < user_position
    move_up( user_position, lift_position)
  end
  if lift_position == user_position
    door_control
  end
end

def priority_check(current_position, next_position_1, next_position_2)
  (current_position - next_position_1).abs <= (current_position - next_position_2).abs

end

def lift_working(lift_position, user_1, dest_1, user_2, dest_2)
  lift_arrival(lift_position, user_1)
  if priority_check(user_1,dest_1, user_2)
    lift_arrival(user_1, dest_1)
    lift_arrival(dest_1, user_2)
    lift_arrival(user_2, dest_2)
    
  else
    lift_arrival(user_1, user_2)
    if priority_check(user_2, dest_1, dest_2)
      lift_arrival(user_2, dest_1)
      lift_arrival(dest_1, dest_2)
      
    else
      lift_arrival(user_2, dest_2)
      lift_arrival(dest_2, dest_1)
      
    end
  end
end

def lift_simulation(lift_position , user_position_1, user_position_2, destination_1, destination_2)
  if priority_check(lift_position, user_position_1, user_position_2)
    lift_working(lift_position, user_position_1, destination_1, user_position_2, destination_2)

  else
    lift_working(lift_position, user_position_2, destination_2, user_position_1, destination_1)
  end
end

start_simulation
lift_simulation($lift_position, $user_position_1, $user_position_2, $destination_1, $destination_2)