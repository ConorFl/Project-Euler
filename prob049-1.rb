max = 9999

primes ={}


def prime n
	2.upto(Math.sqrt(n)) do |i|
		return false if n % i == 0
	end
	true
end
2.upto(max) do |i|
	if prime(i)
		key = i.to_s.split("").sort
		if primes[key]
			primes[key] << i
		else
			primes[key] = [i]
		end
	end
end
primes.each do |digits|
	if digits[1].length >= 3
		diffs = {}
		digits[1].sort.combination(2).each do |pair|
			if diffs[pair[1]-pair[0]]
				diffs[pair[1]-pair[0]] << pair
			else
				diffs[pair[1]-pair[0]] = [pair]
			end
		end
		diffs.each do |x|
			if x[1].length > 1
				# puts digits.inspect
				# puts "x is #{x}"
				if x[1].flatten.uniq !=x[1].flatten
					puts "YIPPEE #{x}"
				end
			end
		end

	end
end