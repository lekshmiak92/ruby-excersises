(1..25).each do |number|
  result = ""
  if number%3 == 0
    result = "fizz"
  end
  if number%5 == 0
    result = result + "buzz"
  end
  if result == ""
    result = number
  end
  puts result
end


