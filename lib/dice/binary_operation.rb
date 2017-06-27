module Dice
  class BinaryOperation < Treetop::Runtime::SyntaxNode
    def value
      # If only left exists inject will return left
      right.elements.inject(left.value) do |r, elem|
        elem.operator.apply(r, elem.operand.value)
      end
    end
  end
end
