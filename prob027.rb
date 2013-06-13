def prime(n)
	2.upto(Math.sqrt(n).floor) do |i|
		return false if n % i == 0
	end
	true
end

def consec_prime(a,b)
	count = 0
	puts "a: #{a} b: #{b}"
	0.upto(b-1) do |n|
		tested_val = n*n+a*n+b
		return count if tested_val < 0 || !prime(tested_val)
		count+=1
	end
end
best = 0
$a
$b
(-999).upto(999) do |a|
	1.upto(999) do |b|
		length = consec_prime(a,b)
		if length > best
			best = length 
			$a = a
			$b = b
		end
	end
end
puts best
puts $a
puts $b
