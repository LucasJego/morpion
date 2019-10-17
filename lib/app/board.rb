$:.unshift File.expand_path("./../lib", __FILE__)
require_relative 'board_case.rb'
require_relative 'game.rb'
#require 'app/board_case'
#require 'app/game'


class Board
	attr_accessor :board_cases_array, :number_of_rounds

  def initialize
  	@board_cases_array = []
  	@number_of_rounds = 0

    # Cases de la 1ère ligne
    @board_cases_array << caseA1 = BoardCase.new("A1", " ")
    @board_cases_array << caseA2 = BoardCase.new("A2", " ")
    @board_cases_array << caseA3 = BoardCase.new("A3", " ")

    # Cases de la 2ème ligne
    @board_cases_array << caseB1 = BoardCase.new("B1", " ")
    @board_cases_array << caseB2 = BoardCase.new("B2", " ")
    @board_cases_array << caseB3 = BoardCase.new("B3", " ")

    # Case de la 3ème ligne
    @board_cases_array << caseC1 = BoardCase.new("C1", " ")
    @board_cases_array << caseC2 = BoardCase.new("C2", " ")
    @board_cases_array << caseC3 = BoardCase.new("C3", " ")
    
  end


  def play_turn(players_array)
   # puts "\nVoulez-vous faire une partie?"
    #answer = gets.chomp
    
    answer = "oui"
    # La variable d'instance @number_of_round va à la fois compter le nombre de tours joués et permettre de savoir quel joueur doit jouer. Si n est impair, c'est au joueur 1, sinon c'est au joueur 2
    @number_of_rounds = 1

    while answer != "non" || answer != "Non" do
      while number_of_rounds <= 9
	      # On définit un tableau des cases disponibles
	      # Au départ, ce tableau est identique au tableau des cases
	      available_board_cases_array = @board_cases_array
	      
	      # reste va valoir 1 ou 0
	      rest = number_of_rounds % 2

        puts "\n\n\t\tTour n°#{number_of_rounds}".light_red

	      if rest == 1
	      	print "\nAu tour de "
	      	print "#{players_array[0].name}.".light_blue
	      else
	      	print "\nAu tour de "
	      	print "#{players_array[1].name}.".light_blue
	      end

	      puts "\nSur quelle case voulez-vous jouer?".green
	      print "> "
	      answer_case_position = gets.chomp

	      if answer_case_position == 'A1'
	        # Le programme remplace la valeur par défaut de la case par 'X'
	        @board_cases_array[0].content = players_array[rest].symbol
	         # plus rajouter une condition si c'est joueur 1 ou 2
	        # Le programme enlève la case A1 du tableau @board_cases_array
	        #@board_cases_array.delete(@board_cases_array[0])
	        players_array[rest].symbol
	      elsif answer_case_position == 'A2'
	        @board_cases_array[1].content = players_array[rest].symbol
	        #@board_cases_array.delete(@board_cases_array[1])
	      elsif answer_case_position == 'A3'
	        @board_cases_array[2].content = players_array[rest].symbol
	        #@board_cases_array.delete(@board_cases_array[2])
	      elsif answer_case_position == 'B1'
	        @board_cases_array[3].content = players_array[rest].symbol
	        #@board_cases_array.delete(@board_cases_array[3])
	      elsif answer_case_position == 'B2'
	        @board_cases_array[4].content = players_array[rest].symbol
	        #@board_cases_array.delete(@board_cases_array[4])
	      elsif answer_case_position == 'B3'
	        @board_cases_array[5].content = players_array[rest].symbol
	        #@board_cases_array.delete(@board_cases_array[5])
	      elsif answer_case_position == 'C1'
	        @board_cases_array[6].content = players_array[rest].symbol
	        #@board_cases_array.delete(@board_cases_array[6])
	      elsif answer_case_position == 'C2'
	        @board_cases_array[7].content = players_array[rest].symbol
	        #@board_cases_array.delete(@board_cases_array[7])
	      elsif answer_case_position == 'C3'
	        @board_cases_array[8].content = players_array[rest].symbol
	        #@board_cases_array.delete(@board_cases_array[8])
	      
	      end

        @number_of_rounds += 1
      end
    end

  end

  #Fonction qui vérifie le plateau et qui indique si un des joueurs a gagné ou s'il y a match nul
  def victory
    # Lister toutes les conditions pour gagner?
    # Si les cases A1, A2 et A3 contiennent un "X" ou si les 3 contiennent un "O"
    # idem pour les cases B1, B2 et B3
    # idme pour C1, C2 et C3, A1, B1 et C1, A2, B2, C2, A3, B3 et C3
    # ou les deux diagonales

    # match nul sinon

    #if board_cases_array[0].content == "X" &&
    #end

  end



end

#display_board
# Quand un joueur joue sur une case :
# Il faut que le contenu de la case passe de innocupé (ou " ") 
# à occupé -> caseA1.content = "X" par exemple
# puis il faut que cette case sorte du tableau des cases
# -> board_cases_array.delete(caseA1)


