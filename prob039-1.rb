# 2a**2 = c**2
# 2a+c==1000
# c=1000-2a
# 2a**2 = (1000-2a)**2
# 2a**2 = 1000000-4000a + 4a**2
# 0 = 1000000 - 4000a + 2a**2
# a = (4000+Math.sqrt(16000000-8000000))/4.to_f
solution = {}
$max_ab = 600
2.upto($max_ab) do |ab_sum|
	1.upto((ab_sum-1)/2) do |a|
		b = ab_sum - a
		c = Math.sqrt(a**2+b**2) 
		if c % 1 == 0
			if solution[a+b+c]
				solution[a+b+c] << [a,b,c]
			else 
				solution[a+b+c] = [[a,b,c]]
			end
		end
	end
end
max = 1
solution.each do |k,v|
	if k < 1000
		puts "#{k}:#{v.length}" 
		if v.length > max
			max = v.length
			puts "#{k}:#{v.length}...NEW MAX**************************"
		end
	end
end