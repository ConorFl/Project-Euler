def special_trip
	1.upto(1000) do |i|
		1.upto(1000-i) do |j|
			k = 1000 - i - j
			if i**2 + j**2 == k**2 || j**2 == i**2 + k**2 || i**2 == j**2 + k**2
				puts "i: #{i}, j: #{j}, k: #{k}"
				puts i*j*k
				return false
			end
		end
	end
end

special_trip