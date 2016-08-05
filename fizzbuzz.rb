(1..100).each do |p|
	if p%5 == 0 && p%3 == 0
    puts "fizzbuzz"
  elsif p%3 == 0 
   puts "fizz"
 elsif p%5 == 0 
   puts "buzz"
 else
   puts p
 end
end