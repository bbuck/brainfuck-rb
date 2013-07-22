module Brainfuck
  class Runtime
    def initialize
      @cells = [0]
      @current_cell = 0
    end

    def shift(direction)
      case direction
      when :right
        @current_cell += 1
        if @current_cell > @cells.length - 1
          @cells << 0
        end
      when :left
        @current_cell -= 1
        if @current_cell < 0
          @current_cell = 0
        end
      end
    end

    def mutate(how)
      case how
      when :incr
        @cells[@current_cell] += 1
      when :decr
        @cells[@current_cell] -= 1
      end
    end

    def value
      @cells[@current_cell]
    end

    def value=(value)
      @cells[@current_cell] = value
    end
  end
end
