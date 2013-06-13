test_max = 9999999
total_sum = 0
def sum_of_fifth n
	num = n
	sum = 0
	n.to_s.split("").each do |dig|
		sum += (dig.to_i)**5
	end
	if sum == n
		puts n
		return true
	else
		return false
	end
end

2.upto(test_max) do |number|
	# puts number
	total_sum += number if sum_of_fifth(number)
end
puts "total: #{total_sum}"