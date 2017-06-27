require 'rubygems'

module Dice
  class BinaryOperation < Treetop::Runtime::SyntaxNode
    def value
      tail.elements.inject(head.value) do |value, element|
        element.operator.apply(value, element.operand.value)
      end
    end
  end
end
