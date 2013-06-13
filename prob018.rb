tri =[['75'.to_i],
['95'.to_i,'64'.to_i],
['17'.to_i,'47'.to_i,'82'.to_i],
['18'.to_i,'35'.to_i,'87'.to_i,'10'.to_i],
['20'.to_i,'04'.to_i,'82'.to_i,'47'.to_i,'65'.to_i],
['19'.to_i,'01'.to_i,'23'.to_i,'75'.to_i,'03'.to_i,'34'.to_i],
['88'.to_i,'02'.to_i,'77'.to_i,'73'.to_i,'07'.to_i,'63'.to_i,'67'.to_i],
['99'.to_i,'65'.to_i,'04'.to_i,'28'.to_i,'06'.to_i,'16'.to_i,'70'.to_i,'92'.to_i],
['41'.to_i,'41'.to_i,'26'.to_i,'56'.to_i,'83'.to_i,'40'.to_i,'80'.to_i,'70'.to_i,'33'.to_i],
['41'.to_i,'48'.to_i,'72'.to_i,'33'.to_i,'47'.to_i,'32'.to_i,'37'.to_i,'16'.to_i,'94'.to_i,'29'.to_i],
['53'.to_i,'71'.to_i,'44'.to_i,'65'.to_i,'25'.to_i,'43'.to_i,'91'.to_i,'52'.to_i,'97'.to_i,'51'.to_i,'14'.to_i],
['70'.to_i,'11'.to_i,'33'.to_i,'28'.to_i,'77'.to_i,'73'.to_i,'17'.to_i,'78'.to_i,'39'.to_i,'68'.to_i,'17'.to_i,'57'.to_i],
['91'.to_i,'71'.to_i,'52'.to_i,'38'.to_i,'17'.to_i,'14'.to_i,'91'.to_i,'43'.to_i,'58'.to_i,'50'.to_i,'27'.to_i,'29'.to_i,'48'.to_i],
['63'.to_i,'66'.to_i,'04'.to_i,'68'.to_i,'89'.to_i,'53'.to_i,'67'.to_i,'30'.to_i,'73'.to_i,'16'.to_i,'69'.to_i,'87'.to_i,'40'.to_i,'31'.to_i],
['04'.to_i,'62'.to_i,'98'.to_i,'27'.to_i,'23'.to_i,'09'.to_i,'70'.to_i,'98'.to_i,'73'.to_i,'93'.to_i,'38'.to_i,'53'.to_i,'60'.to_i,'04'.to_i,'23'.to_i]]

(tri.length-1).downto(1) do |i|
	0.upto(i-1) do |j|
		tri[i-1][j] += [tri[i][j],tri[i][j+1]].max
	end
end

puts tri[0][0]