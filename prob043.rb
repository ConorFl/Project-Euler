$winners = []

def prime_divisors(n)
	if n[7..9].to_i % 17 == 0 && n[6..8].to_i % 13 == 0 && n[5..7].to_i % 11 == 0 && n[4..6].to_i % 7 == 0 && n[3..5].to_i % 5 == 0 && n[2..4].to_i % 3 == 0 && n[1..3].to_i % 2 == 0
		puts n[7..9].to_i
		return true
	else
		return false
	end
end

def pan(str_so_far, array)
	# puts "string so far: #{str_so_far}" if str_so_far.length < 10
	panz = array
	strz = str_so_far
	if array.length == 1
		if prime_divisors(str_so_far+array[0])
			# puts "#{str_so_far} str_so_far, #{array[0]} array0, #{$winners}"
			$winners << (str_so_far+array[0])
			puts "#{(str_so_far+array[0])} is a good one"
			return false
		else
			# puts str_so_far+array[0]
		end
	else
		panz.each do |digit|
			panz = array - [digit]
			pan(str_so_far+digit, panz)
		end

	end
end

pan("", ("0".."9").to_a)

puts $winners
puts $winners.map{|x| x.to_i}.inject(:+)