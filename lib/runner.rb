require './lib/games'
require './lib/event'

p "What year of games would you like?"
x = gets.chomp.to_i
if x > 2019 || x < 1950
	p "No games that haven't come out yet or before 1950"
	exit(1)
end

game = Games.new(x)
i = 0
loop do

	p "Would you like to ... \n1. Get Summary\n2. Add Event\n3. Exit"

	x = 0
	loop do
		y = gets.chomp.to_i
		
		if y == 3
			exit(0)
			break
		elsif y == 1
			game.summary
			break
		elsif y == 2
			p "What event would you like to add?"
			z = gets.chomp
			game.add_event(z)
			p "How many players?"
			num_players = gets.chomp.to_i
			ager = 0
			ages = []
			while ager < num_players 
				puts "What is the age of player #{ager+1}?"
				ind_age = gets.chomp.to_i
				ages << ind_age
				ager =+ 1
			end
			event = event.new(game.events.last, ages)
			break
			
		else
			p "Number between 1 & 3"
		end
	end
	
end


