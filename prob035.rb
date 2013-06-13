array = (0..1000000).to_a
array[0] = nil
array[1] = nil
rotating_primes = []

def prime(n)
	2.upto(Math.sqrt(n).floor) do |factor|
		return false if n % factor == 0
	end
	print "#{n} prime, "
	return true
end
3.upto(1000000) do |i|
	puts i if i % 1000 == 0
	array[i]=nil unless prime(i)
end

array = array.uniq - [nil]
array.each do |prime|
	puts prime
	all_good = true
	prime_as_array = prime.to_s.split("")
	(prime_as_array.length - 1).times do 
		prime_as_array[prime_as_array.length - 1] = prime_as_array.shift
		all_good = false unless !prime_as_array.include?("0") && prime(prime_as_array.join("").to_i)
	end
	if all_good
		rotating_primes << prime
	end
end
puts rotating_primes
puts rotating_primes.length

# puts array.join(',')
# puts array.length
