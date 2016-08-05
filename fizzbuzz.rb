(1..100).each do |number|
  if number%15 == 0
    result = "fizzbuzz"
  elsif number%3 == 0 
    result = "fizz"
  elsif number%5 == 0 
    result = "buzz"
  else
    result = number
  end
  puts result
end