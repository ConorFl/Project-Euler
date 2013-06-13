winners = []
1.upto(9) do |num_ten|
	0.upto(9) do |num_one|
		1.upto(9) do |den_ten|
			0.upto(9) do |den_one|
				if num_one == den_ten && (num_ten*10+num_one)*den_one == (den_ten*10+den_one)*num_ten
					winners << [num_ten*10+num_one,den_ten*10+den_one] unless num_ten == den_ten
				end
			end
		end	
	end
end

puts winners
def simplified_den(array)
	num_factors = {}
	den_factors = {}
	0.upto(array.length - 1) do |el|
		test = array[el][0]
		2.upto(Math.sqrt(test)) do |fact|
			while test % fact == 0
				test = test / fact
				if num_factors[fact] == nil
					num_factors[fact] == 1
				end
			end
		end
	end

end
# simplified_deinners)

#2 - 5
#19 - 1
#13 - 1
#7 - 2

puts (2**2)*(5**2)

#2 - 7
#19 - 1
#5 - 2
#13 - 1
#7 -2

