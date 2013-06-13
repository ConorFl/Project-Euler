n = 1001
rings = n / 2
sum = 1
next_num = 1
1.upto(rings) do |i|
	puts i
	increment = 2*i
	4.times do
		next_num += increment
		sum += next_num
	end
	# sum += (1+increment)+(1+2*increment)+(1+3*increment)+(1+4*increment)
end
puts "sum: #{sum}"


