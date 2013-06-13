solutions = []

2.upto(100) do |a|
	puts a
	2.upto(100) do |b|
		test = a**b
		solutions << test unless solutions.include?(test)
	end
end
puts solutions.length