def primes_less_than(n)
	multiples = 1
	candidates = (0..n).to_a
	candidates[0] = ""
	candidates[1] = ""
	max_cand = Math.sqrt(n).floor
	2.upto(max_cand) do |cand|
		if candidates[cand] != "" && prime(cand)
			multiples = cand*2
			while(multiples <= n)
				puts "cancelling #{multiples}"
				candidates[multiples] = ""
				multiples += cand
			end
		end
	end
	return candidates.uniq - [""]
end
def prime(n)
	2.upto(Math.sqrt(n).floor) do |x|
		if n % x == 0
			return false
		end
	end
	return true
end
$four_in_question = []
$primes = primes_less_than(1000)


def prime_factors(n)
	num = n
	current_n = []
	max_p = Math.sqrt(n).floor
	p_index = 0
	primez = $prime_factors
	current_p = primez.shift
	while(current_p <= max_p)
		if num % current_p == 0
			while num % current_p == 0
				
			end
		end
	end
end

puts $primes.inspect