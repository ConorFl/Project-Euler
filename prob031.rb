count = 0
VALZ = {"twopound"=>200,"onepound"=>100,"fifty"=>50,"twenty"=>20,"ten"=>10,"five"=>5,"two"=>2,"one"=>1}
0.upto(1) do |twop|
	if twop*VALZ["twopound"] <= 200
		0.upto(2) do |onep|
			if twop*VALZ["twopound"]+onep*VALZ["onepound"] <= 200
				0.upto(4) do |fifty|
					if twop*VALZ["twopound"]+onep*VALZ["onepound"]+fifty*VALZ["fifty"] <= 200
						0.upto(10) do |twenty|
							if twop*VALZ["twopound"]+onep*VALZ["onepound"]+fifty*VALZ["fifty"]+twenty*VALZ["twenty"] <= 200
								0.upto(20) do |ten|
									puts "2p:#{twop}, 1p:#{onep}, 50:#{fifty}"
									if twop*VALZ["twopound"]+onep*VALZ["onepound"]+fifty*VALZ["fifty"]+twenty*VALZ["twenty"]+ten*VALZ["ten"] <= 200
										0.upto(40) do |five|
											if twop*VALZ["twopound"]+onep*VALZ["onepound"]+fifty*VALZ["fifty"]+twenty*VALZ["twenty"]+ten*VALZ["ten"]+five*VALZ["five"] <= 200
												0.upto(100) do |two|
													if twop*VALZ["twopound"]+onep*VALZ["onepound"]+fifty*VALZ["fifty"]+twenty*VALZ["twenty"]+ten*VALZ["ten"]+five*VALZ["five"]+two*VALZ["two"] <= 200
														0.upto(200) do |one|
															count+= 1 if twop*VALZ["twopound"]+onep*VALZ["onepound"]+fifty*VALZ["fifty"]+twenty*VALZ["twenty"]+ten*VALZ["ten"]+five*VALZ["five"]+two*VALZ["two"]+one*VALZ["one"] == 200
														end
													end
												end
											end
										end
									end
								end
							end
						end
					end
				end
			end
		end
	end
end
puts "COUNT: #{count}"