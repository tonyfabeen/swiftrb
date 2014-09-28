#encoding: utf-8

module Swiftrb

  class Lexer

    attr_reader :scanner

    def initialize
      @scanner = SwiftrbScanner.new
    end

  end

end
