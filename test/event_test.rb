require 'minitest/autorun'
require 'minitest/pride'
#require './lib/games'
require './lib/event'

class EventTest < Minitest::Test
	
	#I don't know why this doesn't work
	#def setup	
		#event = Event.new("Culrling", [24, 30, 18, 20, 41])
	#end	

	def test_event_init
		event = Event.new("Culrling", [24, 30, 18, 20, 41])
		assert_instance_of Event, event
		
	end

	def test_name
		event = Event.new("Culrling", [24, 30, 18, 20, 41])	
		assert(event.name)
	end
	
	def test_ages
		event = Event.new("Culrling", [24, 30, 18, 20, 41])
		assert_equal event.ages, [24, 30, 18, 20, 41]
	end

	def test_max_age
		event = Event.new("Culrling", [24, 30, 18, 20, 41])
		assert_equal event.max_age, 41
	end
	
	def test_min_age
		event = Event.new("Culrling", [24, 30, 18, 20, 41])
		assert_equal event.min_age, 18
	end

	def test_average_age
		event = Event.new("Culrling", [24, 30, 18, 20, 41])
		assert_equal event.average_age, 26.6
	end
	
	def test_standard_deviation_age
		event = Event.new("Culrling", [24, 30, 18, 20, 41])
		assert_equal event.standard_deviation_age, 8.28
	end

end
