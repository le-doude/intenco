module Dice
  class ParenthesisExpression
    def value
      # allows for empty parenthesis
      inner && !inner.text_value.empty? ? inner.value : 0
    end
  end
end
