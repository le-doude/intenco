require 'rubygems'
require 'rspec'
require 'dice'

RSpec.describe DiceParser do
  describe :parse do
    it 'parse simple addition' do
      expect(DiceParser.new.parse('1+1')).not_to be_nil
    end
    it 'parse simple addition spaced' do
      expect(DiceParser.new.parse('12 + 2')).not_to be_nil
    end
    it 'parse simple subsctraction' do
      expect(DiceParser.new.parse('7-1')).not_to be_nil
    end
    it 'parse simple subsctraction spaced' do
      expect(DiceParser.new.parse('7 - 1')).not_to be_nil
    end
    it 'parse simple multiplication' do
      expect(DiceParser.new.parse('7*31')).not_to be_nil
    end
    it 'parse simple multiplication space' do
      expect(DiceParser.new.parse('7 * 31')).not_to be_nil
    end
    it 'parse simple division' do
      expect(DiceParser.new.parse('54/9')).not_to be_nil
      end
    it 'parse simple division space' do
      expect(DiceParser.new.parse('54 / 9')).not_to be_nil
    end
  end
end
