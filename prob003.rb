def large_prime(n)
	Math.sqrt(n).floor.downto(2) do |factor|
		if n % factor == 0 && isPrime(factor)
			puts factor
			return false
		end
	end
end

def isPrime(n)
	for d in 2..(Math.sqrt(n).floor)
		return false if n % d == 0
	end
	return true
end

large_prime(600851475143)