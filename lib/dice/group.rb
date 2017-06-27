module Dice
  class Group < Treetop::Runtime::SyntaxNode
    def value
      rolls.inject(:+)
    end

    # array holding the outcome of each dice in group
    def rolls
      # theoretical dices which have X faces from 1 to X included and are evenly balance (as much as our PRNG)
      @rolls ||= (quantity ? quantity.value : 1).times.map{ rand(faces.value) + 1 }
    end
  end
end
