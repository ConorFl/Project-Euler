def self_power(n)
	sum = 0
	1.upto(n) do |i|
		puts i
		sum+= (i**i) % 10000000000
	end
	puts sum
end

self_power(1000)