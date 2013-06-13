def factor_count(n)
	factors = 0
	1.upto(Math.sqrt(n).floor) do |i|
		factors += 2 if n % i == 0
	end
	factors -= 1 if Math.sqrt(n) == Math.sqrt(n).floor
	puts "n:#{n} factors:#{factors}"
	factors
end

def factorz()
	i = 1
	while true
		return false if factor_count(i*(i+1)/2) > 500
		i+=1
	end
end

factorz