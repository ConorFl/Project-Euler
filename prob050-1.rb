primes =[]
def prime(n)
	2.upto(Math.sqrt(n).floor) do |fact|
		return false if n % fact == 0
	end
	true
end
2.upto(1000000) do |i|
	primes << i if prime(i)
end

max = []
# puts primes.inspect

501.upto(800) do |nums|
	level_count = 0
	puts nums
	first_i = 0
	while (primes[first_i,nums].inject(:+)) < 1000000 && level_count < 2
		# puts first_i
		if primes.include?(primes[first_i,nums].inject(:+))
			puts "#{primes[first_i,nums].inject(:+)} by #{nums} starting at #{first_i}"
			level_count += 1
		end
		first_i += 1
	end
end