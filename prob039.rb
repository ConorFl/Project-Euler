def triangles_count(perimeter)
	triangles = []
	count = 0
	1.upto(perimeter/((2.0+2**0.5).floor)) do |a|
		a.upto(perimeter - a - 1) do |b|
			c = perimeter - a - b
			if a + b > c
				if a**2 + b**2 == c**2
					triangles << [a,b,c] unless triangles.include?([b,a,c])
					count += 1
				end
			end
		end
	end
	return triangles
end
$maxp = 0
$max_count = 0
1.upto(1000000) do |i|
	puts i if i % 1000 == 0
	tris = triangles_count(i)
	if tris.length > $max_count
		$maxp = i 
		$max_count = tris.length
		puts "#{i}: #{tris}"

	end
end
# 2a+2**.5 * a =p
# a(2+rad2) = p

# c = rad2 * a
