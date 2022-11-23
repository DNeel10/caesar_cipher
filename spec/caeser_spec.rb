require './lib/caeser'
require 'rspec'

describe Caeser do
  describe '#caesar_cipher' do
    it 'converts a single letter by the modifier' do
      caeser = Caeser.new
      expect(caeser.cipher('a', 5)).to eql('f')
    end

    it 'converts a string of letters by the modifier' do
      caeser = Caeser.new
      expect(caeser.cipher('hello', 10)).to eql('rovvy')
    end

    it 'leaves special characters as is' do
      caeser = Caeser.new
      expect(caeser.cipher('what?', 2)).to eql('yjcv?')
    end

    it 'wraps from the end of the alphabet back to the begginning while holding the case correctly' do
      caeser = Caeser.new
      expect(caeser.cipher('xyzXYZ', 5)).to eql('cdeCDE')
    end
  end
end
