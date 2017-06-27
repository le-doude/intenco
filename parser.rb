require 'rubygems'
require 'treetop'
require 'byebug'
require 'ap'
require_relative 'lib/dice/binary_operation'
require_relative 'lib/dice/group'

Treetop.load 'lib/dice'

parser = DiceParser.new

test = '2d6'
if (tree = parser.parse(test))
  puts tree.value
else
  puts parser.failure_reason
end





