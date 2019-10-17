require_relative 'board_case.rb'


class Board
	attr_accessor :board_cases_array, :number_of_rounds
  # Affiche le plateau en une seule fois
  # l'état de chaque case correspond à l'état donné dans la classe Board_Case
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
    
    puts @board_cases_array
  end


  def play_turn


  end

  #Fonction qui vérifie le plateau et qui indique si un des joueurs a gagné ou s'il y a match nul
  def victory
    # Lister toutes les conditions pour gagner?
    # Si les cases A1, A2 et A3 contiennent un "X" ou si les 3 contiennent un "O"
    # idem pour les cases B1, B2 et B3
    # idme pour C1, C2 et C3, A1, B1 et C1, A2, B2, C2, A3, B3 et C3
    # ou les deux diagonales

    # match nul sinon

  end

  
  def display_board
    print "-------------------------\n"
    print "|#{caseA1.position}     |#{caseA2.position}      |#{casA3.postion}     |\n"
    print "|   #{caseA1.content}   |   #{caseA2.content}   |   #{casA3.content}   |\n"
    print "|       |       |       |\n"
    print "-------------------------\n"  
  end



  #def test
  #	@board_cases_array[0].content = "X"
  #	@board_cases_array.delete(caseA1)
  #	puts @board_cases_array
  #end


end

#display_board
# Quand un joueur joue sur une case :
# Il faut que le contenu de la case passe de innocupé (ou " ") 
# à occupé -> caseA1.content = "X" par exemple
# puis il faut que cette case sorte du tableau des cases
# -> board_cases_array.delete(caseA1)


