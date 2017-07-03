module Dice
  module DiceOperators
    class BestOf < Treetop::Runtime::SyntaxNode
      def apply(dice_array, n)
        dice_array.max(n)
      end
    end

    class WorstOf < Treetop::Runtime::SyntaxNode
      def apply(dice_array, n)
        dice_array.min(n)
      end
    end
  end
end
