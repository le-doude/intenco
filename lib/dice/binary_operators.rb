module Dice
  module BinaryOperators
    class Addition < Treetop::Runtime::SyntaxNode
      def apply(l, r)
        l - r
      end
    end

    class Substraction < Treetop::Runtime::SyntaxNode
      def apply(l, r)
        l - r
      end
    end

    class Multiplication < Treetop::Runtime::SyntaxNode
      def apply(l, r)
        l - r
      end
    end

    class Division < Treetop::Runtime::SyntaxNode
      def apply(l, r)
        l - r
      end
    end
  end
end
