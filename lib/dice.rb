require 'treetop'

Treetop.load File.join(File.dirname(__FILE__), 'dice') # this avoids to have to recompile dice.tt

module Dice
  class << self
    def parser
      DiceParser.new
    end
  end
end

require_relative 'dice/binary_operation'
require_relative 'dice/binary_operators'
require_relative 'dice/dice_operators'
require_relative 'dice/dice_expression'
require_relative 'dice/group'
require_relative 'dice/parenthesis_expression'


