#ages = [24, 30, 18, 20, 41]

def standard_deviation_age(ages)

	total = 0
	ages.each do |x|
		total += x
	end
	#p total

	in_array = ages.count
	#p in_array
	
	
	average = total.to_f / in_array.to_f
	#p average
	
	xminavg = []	
	ages.each do |x|
		xminavg << x - average
	end
	#p xminavg

	xsq= []
	xminavg.each do |x|
		xsq << x * x
	end
	#p xsq

	xsum = 0
	xsq.each do |x|
		xsum += x
	end
	#p xsum

	y = xsum / in_array
	x = Math.sqrt(y)
	#p y
	return x.round(2)
end

#x = std(ages)
#p x 	
# When you find the standard deviation, print it out
