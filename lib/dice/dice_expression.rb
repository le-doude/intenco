module Dice
  class DiceExpression
    def rolls
      arr = dice_group.rolls
      if right && !right.text_value.empty?
        return right.operator.apply(arr, right.operand.value)
      end
      arr
    end

    def value
      rolls.inject(:+)
    end
  end
end
