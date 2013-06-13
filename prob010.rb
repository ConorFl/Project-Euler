def prime_test(n)
	2.upto(Math.sqrt(n).floor) do |i|
		return false if n % i == 0
	end
	return true
end

def sum_primes
	sum = 2
	3.upto(2000000) do |i|
		sum += i if prime_test(i)
	end
	puts sum
end

sum_primes