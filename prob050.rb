def prime(n)
	2.upto(Math.sqrt(n).floor) do |factor|
		return false if n % factor == 0
	end
	# puts n
	true
end
primes = []
2.upto(1000000) do |x|
	primes << x if prime(x)
end
puts "DONE finding primes"
# puts primes.inspect
# puts primes[3,21].inject(:+)

def binary_search(length, prime)

end