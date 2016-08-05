def divisible_by_3?(number)
  number%3 == 0
end

def divisible_by_5?(number)
  number%5 == 0
end

(1..25).each do |number|
  result = ""
  if divisible_by_3?(number)
    result = "fizz"
  end
  if divisible_by_5?(number)
    result += "buzz"
  end
  if result == ""
    result = number
  end
  puts result
end


