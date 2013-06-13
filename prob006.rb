def differences_alg
	sum_of_squares = 0
	1.upto(100) do |i|
		sum_of_squares += (i*i)
	end
	puts (101*100/2)**2 - sum_of_squares
end

differences_alg