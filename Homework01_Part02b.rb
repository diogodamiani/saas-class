def rps_tournament_winner(tournament)

	number_of_tournaments = tournament.length
	final_game = []
	index = 0;

	while index < number_of_tournaments		

		puts final_game.length
		final_game += games_winner(tournament[index]) + games_winner(tournament[index + 1])
		index += 2

	end

	puts final_game

	return rps_game_winner(final_game)
end

def games_winner(games)
	teste = []
	index = 0;

	while index < games.length
		teste  += rps_game_winner(games[index]) + rps_game_winner(games[index + 1])
		index += 2
	end

	return rps_game_winner(teste);
end


