require 'rubygems'

module Dice
  class Group < Treetop::Runtime::SyntaxNode
    def value
      rolls.inject(:+)
    end

    def rolls
      @rolls ||= (quantity ? quantity.value : 1).times.map{ rand(faces.value) + 1 }
    end
  end
end
