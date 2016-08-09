def move_down(upper_level, lower_level)
  until upper_level < lower_level do 
    puts upper_level
    upper_level -=1
  end
end

def move_up(upper_level, lower_level)
  until lower_level > upper_level do
    puts lower_level
    lower_level +=1
  end
end

puts "enter the lift position"
lift_position = gets.to_i
puts "enter the user position"
user_position = gets.to_i
puts "enter the destination "
destination = gets.to_i


if lift_position > user_position
  move_down(lift_position, user_position)
end

if lift_position < user_position
  move_up( user_position, lift_position)
end

puts " DO "
puts " DC "

if user_position > destination
  move_down(user_position, destination)
end
if user_position< destination
  move_up(destination, user_position)
end
