max = 100000
prob0tri = [] 
prob0pen = [] 
prob0hex = []
1.upto(max) do |i|
	tri << i*(i+1)/2
	pen << i*(3*i - 1)/2
	hex << i*(2*i - 1)
end

puts (prob0tri & prob0pen & prob0hex).inspect
