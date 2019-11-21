class Event
	attr_reader :name, :ages
	

	def initialize(name, ages)
		@name = name
		@ages = ages
	end

	#require_relative 'standard_deviation.rb'

	def max_age
		max = 0
		@ages.each do |x|
			if x.to_i > max
				max = x
			end
		end
		return max
	end

	def min_age
		min = 100
		@ages.each do |x|
			if x.to_i < min
				min = x
			end
		end
		return min
	end

	def average_age	
		avg = 0
		count = @ages.count
		total = 0
		@ages.each do |x|
			total += x
		end

		avg = total / count.to_f
		return avg.round(2)
	end

	def standard_deviation_age

        	total = 0
        	@ages.each do |x|
	       		total += x
	        end
	        #p total

	        in_array = ages.count
	        #p in_array


	        average = total.to_f / in_array.to_f
	        #p average

	        xminavg = []
	        @ages.each do |x|
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

end
	
				
