require 'bundler'
Bundler.require

#.unshift File.expand_path("lib/app", __FILE__)
require_relative 'lib/app/board_case.rb'
require_relative 'lib/app/board.rb'
require_relative 'lib/app/player.rb'
require_relative 'lib/app/game.rb'


#game = Board.new
#player1 = Player.new("Lucas", "X")

game = Game.new