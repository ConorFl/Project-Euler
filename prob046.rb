$odd_com = []
$primes = []
$max = 10000
def prime?(n)
	2.upto(Math.sqrt(n).floor) do |fact|
		return false if n % fact == 0
	end
	true
end
3.upto($max) do |i|
	if prime?(i)
		$primes << i 
	elsif i % 2 == 1
		$odd_com << i 
	end
end

$odd_com.each do |i|
	good = false
	$primes.each do |prime|
		# puts "prime: #{prime} i: #{i}"
		if prime < i && Math.sqrt((i - prime)/2) % 1 == 0
			good = true
			# return "#{i} = #{prime} + 2*#{Math.sqrt((i-prime)/2)}**2"
		end
	end
	puts "WINNER: #{i}" unless good
end

# puts $odd_com.inspect
# puts $primes.inspect