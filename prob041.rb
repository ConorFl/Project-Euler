def prime(n)
	2.upto(Math.sqrt(n).floor) do |i|
		if n % i == 0
			# puts "#{n} not prime (divisible by #{i}"
			return false 
		end
	end
	return true
end

def pan(str_so_far, array)
	# puts "string so far: #{str_so_far}" if str_so_far.length < 10
	panz = array
	strz = str_so_far
	if array.length == 1
		if prime((str_so_far+array[0]).to_i)
			puts "#{(str_so_far+array[0])} is PANNNNNNNNNNN"
			return false
		# else
		# 	puts str_so_far+array[0]
		end
	else
		panz.each do |digit|
			panz = array - [digit]
			# strz += digit
			# puts "passing in #{strz}"
			pan(str_so_far+digit, panz)
			# panz << digit
			# strz.chomp(digit)
		end
	end
end

7.downto(7) do |i|
	puts "#{i} digits"
	array = ("1"..(i.to_s)).to_a
	pan("", array)
end