require "lang/interpreter"

module Brainfuck
  def self.eval(file)
    Interpreter.new.eval(File.read(file))
  end
end
