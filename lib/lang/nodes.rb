module Brainfuck
  class Nodes < Struct.new(:nodes)
    def <<(node)
      nodes << node
      self
    end
  end
  class ShiftNode < Struct.new(:direction); end
  class OperationNode < Struct.new(:type); end
  class LoopNode < Struct.new(:loop_body); end
  class ReadNode; end
  class PrintNode; end
end