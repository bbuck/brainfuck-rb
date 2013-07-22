require "io/console"
require "lang/parser"
require "lang/runtime"

module Brainfuck
  class Interpreter
    def initialize
      @parser = Parser.new
      @runtime = Runtime.new
    end

    def eval(code, show_nodes = false)
      nodes = @parser.parse(code)
      p nodes if show_nodes
      nodes.eval(@runtime)
    end
  end

  class Nodes
    def eval(runtime)
      nodes.each do |node|
        node.eval(runtime)
      end
    end
  end

  class ShiftNode
    def eval(runtime)
      runtime.shift(direction)
    end
  end

  class OperationNode
    def eval(runtime)
      runtime.mutate(type)
    end
  end

  class LoopNode
    def eval(runtime)
      loop do
        loop_body.eval(runtime)
        break if runtime.value == 0
      end
    end
  end

  class ReadNode
    def eval(runtime)
      runtime.value = $stdin.getch.ord
    end
  end

  class PrintNode
    def eval(runtime)
      print runtime.value.chr
    end
  end
end
