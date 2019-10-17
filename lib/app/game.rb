class Game
  attr_accessor :current_player, :status, :board, :players_array

  def initialize

    @players_array = []
    symbols_array = ["X", "O"]

    # Affichage de début de jeu
    5.times do
	    system('clear')
	    sleep(0.2)
	    puts "\n\n"
	    puts "\t" * 3 + '------------------------------------------'.red
	    puts "\t" * 3 + '|    Bienvenue dans le jeu du morpion    |'.red
	    puts "\t" * 3 + '| Le but du jeu est d\'aligner 3 symboles |'.red 
	    puts "\t" * 3 + '|          avant l\'adversaire :)         |'.red 
	    puts "\t" * 3 + '------------------------------------------'.red
	    puts "\n\n"
	    sleep(0.7)
    end

    # Création des deux joueurs
    2.times do |i|
    	# Le programme demande au (i+1)ème joueur son pseudo
			puts "\nJoueur n°#{i+1}".light_blue
			puts "Rentrez votre pseudo :"
			print '> '
			name = gets.chomp

			# Si il y'a plus d'un choix possible parmi les symboles
			if symbols_array.size > 1
        # Le programme demande au joueur de choisir un symbole parmi "X" et "O"
        puts "\nChoisissez votre symbole : X ou O"
			  print '> '
			  symbol = gets.chomp
        
        # Si le symbole rentré par l'utilisateur est différent de "X" ou "O"
			  while !symbols_array.include?(symbol) do
			  	# Le programme affiche un message d'erreur et redemande la saisie du symbole
					puts "Ce choix n\'est pas encore disponible dans cette version du jeu...\n\n".red
					puts 'Choisissez votre symbole : X ou O'
					print '> '
					symbol = gets.chomp
				end

				#On retire du tableau symbols_array le symbole choisi par le premier joueur
				symbols_array.delete(symbol)
			
			# Le deuxième joueur n'a pas le choix de son symbole
	    else
	    	symbol = symbols_array[0]
	    	puts "\nChoisissez votre symbole"
	    	sleep(2)
	    	puts "\nAh bah non, vous, vous avez pas le choix..."
	    	sleep (2)
	    end
	    
	    # Création du joueur via la classe Player
			@players_array << Player.new(name, symbol)

		end
		
  # Affichage du début de partie
	puts "\n\n#{@players_array[0].name} (#{@players_array[0].symbol}) va jouer contre #{@players_array[1].name} (#{@players_array[1].symbol})."

	# Initialisation du board
	board = Board.new
	board.play_turn

	end

  # Fonction qui affiche le plateau
  def turn

  end

  def new_round
  end

  def game_end
  end

end