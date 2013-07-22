module Brainfuck
  class Lexer
    class << self
      OPERATORS = ['>', '<', '+', '-', '[', ']', ',', '.']
      def tokenize(code)
        tokens = []
        unless code && code.length > 0
          tokens
        end
        i = 0
        while i < code.length
          case code[i..-1]
          when /\A(\s+)/
            i += $1.length # ignore whitespace
          when /\A(.)/
            if OPERATORS.include? $1
              tokens << [$1, $1]
            end # Comment is anything other than operators, so ignore
            i += 1
          end
        end
        tokens
      end
    end
  end
end