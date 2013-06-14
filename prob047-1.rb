$prime_factors=[[0],[1]]
$consecutive = 0
$winners = []
def prime_fact(n)
	$prime_factors[n]= {}
	num = n
	i = 2
	while(num > 1)
		# puts "num #{num}"
		until num % i != 0
			num = num / i
			if $prime_factors[n][i]
				$prime_factors[n][i] *= i
			else
				$prime_factors[n][i] = i
			end 
		end
		i += 1
	end
	if $prime_factors[n].length == 4
		puts "#{n}:#{$prime_factors[n].inspect}************************************************"
		$consecutive += 1
		if $consecutive >= 4
			$winners << $prime_factors[(n-3)..n]
		end
	else
		puts "#{n}:#{$prime_factors[n]}"
		$consecutive = 0
	end
end

(21*13*491).upto(21*13*491+4) do |x|
	prime_fact(x)
end

puts $winners.inspect