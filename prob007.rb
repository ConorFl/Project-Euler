def prime_test(n)
	2.upto(Math.sqrt(n).floor) do |i|
		return false if n % i == 0
	end
	return true
end

def nthprime
	count = 1
	i = 3
	while true
		if prime_test(i)
			count += 1
			puts "Num " + count.to_s + ": " + i.to_s
			if count == 10001
				puts i
				return false
			end
		end
		i+= 2
	end
end

nthprime()