class Stack
  attr_reader :stack, :top

    def initialize
      @stack = []
      @top = 0
    end

    def push(el)
      @stack.push(el)
      @top += 1
    end

    def pop
      @stack.pop
      @top -= 1
    end

    def peek
      @stack[@top-1]
    end
  end
