

require 'pry'
require './game'
require './questions'
require './players'

# binding.pry
#
# @Game

new_game = MathGame::Game.new(0,3,3)
new_game.start
