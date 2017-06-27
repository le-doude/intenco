require 'rubygems'
require 'treetop'
require 'byebug'
require 'ap'
require_relative 'lib/dice/binary_operation'
require_relative 'lib/dice/group'

Treetop.load 'lib/dice'

parser = DiceParser.new

test = '3 * ( 1 + 2 ) + 3d6'
if (tree = parser.parse(test))
  puts tree.value
else
  puts "ERROR PARSING : #{parser.failure_reason}"
end





