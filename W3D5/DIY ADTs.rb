class Stack
    def initialize
        @ivar = []
    end

    def push(el)
        @ivar << el
    end

    def pop
        @ivar.pop
    end

    def peek
        @ivar
    end

end

class Queue
    def initialize
        @queue = []
    end

    def enqueue(el)
        @queue << el
    end

    def dequeue
        @queue.shift
    end

    def peek
        @queue
    end

end

class Map
    def initialize
        @map = []
    end

    def set(key, val)
        @map << [key, val]
    end

    def get(key)
        @map.each do |kv|
            return kv[0] if kv[0] == key
        end
    end

    def delete(key)
        @map.each_with_index do |kv, i|
            if kv[0] == key
                @map.delete(kv)
            end
        end
    end

    def show
        @map
    end
end