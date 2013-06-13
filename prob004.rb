def largest_pal()
	palins = []
	101.upto(999) do |n1|
		101.upto(999) do |n2|
			palins << n1*n2 if palindrome(n1*n2)
		end
		puts (n1/9.to_f).to_s + '%'
	end
	puts palins.max
end

def palindrome(n)
	stringed = n.to_s
	last_index = (stringed.length) - 1 
	0.upto((last_index) / 2) do |i|
		if stringed[i] != stringed[last_index - i]
			return false
		end
	end
	return true
end

largest_pal()