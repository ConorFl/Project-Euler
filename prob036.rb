palins_arr = []

def to_binary_str(num)
	bin_num = num
	bin_str = ""
	20.downto(0) do |max_power|
		if num >= 2**max_power
			max_power.downto(0) do |power|
				if bin_num >= 2**power
					bin_num -= 2**power
					bin_str[bin_str.length] = "1"
				else
					bin_str[bin_str.length] = "0"
				end
			end
			# puts "#{num}: #{bin_str}"
			return bin_str
		end
	end

end

def palin?(num_str)
	0.upto(num_str.length/2) do |index|
		return false unless num_str[index] == num_str[num_str.length-1-index]
	end
	return true
end

1.upto(1000000) do |n|
	puts n if n % 1000 == 0
	if palin?(n.to_s) && palin?(to_binary_str(n))
		palins_arr << n
	end
end
# 1.upto(100) do |i|
# 	to_binary_str(i)
# end

puts palins_arr.inject(:+)