class Stack
    def initialize
        @stack = []
    end

    def add(el)
      @stack << el
    end

    def remove
      @stack.pop
    end

    def show
      @stack.dup
    end
  end

class Queue

   def initialize
      @queue = []
   end

   def enqueue(el)
     @stack << el
   end

   def dequeue
   @stack.shift
   end

   def show
    @stack.dup
  end

end

class Map
   def initialize

    @map = []
  end

  def assign(key , value)
    if !keys.include?(key)
      @stack << [key, value]
    else
      @stack[@stack.index(key)][1] = value
    end
  end

  def lookup(key)
    if !keys.include?(key)
      return @stack[@stack.index(key)][1]
    else
     raise "no key"
    end

  end

  def remove(key)
    if !keys.include?(key)
       @stack.delete_at(@stack.index(key))  
    else
     raise "no key"
    end

  end



  def keys
    @map.map {|el|  el.first }
  end

  def show
   @stack
  end


end
