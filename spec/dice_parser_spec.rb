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
    it 'parse sequence of addition' do
      expect(DiceParser.new.parse('54 + 1 + 4 + 55 + 6 + 9')).not_to be_nil
    end
    it 'parse sequence of substractions' do
      expect(DiceParser.new.parse('54 - 1 - 4 - 55 - 6 - 9')).not_to be_nil
    end
    it 'parses dice expressions' do
      expect(DiceParser.new.parse('2d6')).not_to be_nil
    end
    it 'parses dice expressions within arithmetic' do
      expect(DiceParser.new.parse('4 + 8d9 - 1')).not_to be_nil
    end
    it 'parses dice expressions within complex expressions' do
      expect(DiceParser.new.parse('1 + 3')).not_to be_nil
    end
  end
end
