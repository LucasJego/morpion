class Game
  attr_accessor :current_player, :status, :board, :players_array

  def initialize

    @players_array = []
    symbols_array = ["X", "O"]

    # Création des deux joueurs
    2.times do |i|
    	# Le programme demande au (i+1)ème joueur son pseudo
			puts "\nJoueur n°#{i+1}\nRentrez votre pseudo :"
			print '> '
			name = gets.chomp

			# Si il y'a plus d'un choix possible parmi les symboles
			if symbols_array.size > 1

        puts "\nChoisissez votre symbole : X ou O"
			  print '> '
			  symbol = gets.chomp
        
        # Si le symbole rentré par l'utilisateur est différent de "X" ou "O"
			  while !symbols_array.include?(symbol) do
			  	# Le programme affiche un message d'erreur et redemande la saisie du symbole
					puts "Ce choix n\'est pas encore disponible dans cette version du jeu...\n\n"
					puts 'Choisissez votre symbole : X ou O'
					print '> '
					symbol = gets.chomp
				end

				#On retire du tableau symbols_array le symbole choisi par le premier joueur
				symbols_array.delete(symbol)
			  
	    else
	    	symbol = symbols_array[0]
	    end
	    
	    # Création du joueur via la classe Player
			@players_array << Player.new(name, symbol)

		end
		
  # Affichage initial
	puts "#{@players_array[0].name} (#{@players_array[0].symbol}) va jouer contre #{@players_array[1].name} (#{@players_array[1].symbol})."

	end

end