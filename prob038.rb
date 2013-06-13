$winners = []
def concatenated_products(n)
	puts "#{n} PASSED IN"
	0.upto(8) do |i|
		strz = n[(i+1)..8]
		num = n[0..i].to_i
		puts "num: #{num}, strz: #{strz}"
		2.upto(5) do |mult|
			matching_so_far = true
			while strz != "" && matching_so_far
				puts "testing #{num*mult} on #{strz}"
				if strz.index((num*mult).to_s) == 0
					strz = strz[((num*mult).to_s).length,8]
					puts "#{num*mult} makes #{strz}"
				else
					matching_so_far = false
					puts "#{num}:#{strz} with boolean #{matching_so_far}"
				end
			end
			if strz == ""
				puts "winner: #{num}"
				return true 
			end
			strz = n[(i+1)..8]
		end
	end
	return false
end

def pan(str_so_far, array)
	# puts "string so far: #{str_so_far}" if str_so_far.length < 10
	panz = array
	strz = str_so_far
	if array.length == 1
		if concatenated_products(str_so_far+array[0])
			$winners << (str_so_far+array[0])
			puts "#{(str_so_far+array[0])} is PANNNNNNNNNNN"
			return false
		else
			puts str_so_far+array[0]
		end
	else
		panz.each do |digit|
			panz = array - [digit]
			pan(str_so_far+digit, panz)
		end

	end
end
pan("9",("1".."8").to_a.reverse)

puts $winners