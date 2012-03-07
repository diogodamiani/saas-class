class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

def rps_game_winner(game)
	raise WrongNumberOfPlayersError unless game.length == 2
	
	game.each { |player|
		raise NoSuchStrategyError unless "rps".include?(player[1].downcase!)
	}

	player1 = game[0]
	player2 = game[1]

	case [player1[1], player2[1]]
	
		when ['r','r'], ['p','p'], ['s','s'], ['s', 'p'], ['r','s']
			return player1;
	
	else
		return player2;
	end
end

puts rps_game_winner([ [ "Armando", "R" ], [ "Dave", "S" ] ])