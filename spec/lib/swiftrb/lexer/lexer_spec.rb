require 'spec_helper'

describe Swiftrb::Lexer do

  let(:lexer) { described_class.new }

  describe '.initialize' do

    it 'initializes the scanner' do
      expect(lexer.scanner).to_not be_nil
    end

  end

  context 'tokens' do

    it 'CLASS token' do
      expect(lexer.scanner.tokenize('class')).to eq([[:CLASS, 'class']])
    end

    it 'IDENTIFIER token' do
      expect(lexer.scanner.tokenize('something')).to eq([[:IDENTIFIER, 'something']])
    end

  end

end
