class LRUCache
    def initialize(size)
        @size = Array.new(size)
    end

    def count
        # returns number of elements currently in cache
        @size.count
    end

    def add(el)
        # adds element to cache according to LRU principle
        if @size.include?(el)
            @size.delete(el)
            @size << el
        elsif count >= 4
            @size.shift
            @size << el
        else 
            @size << el
        end
    end

    def show
        # shows the items in the cache, with the LRU item first
        @size
    end

    private
    # helper methods go here!
end


p l = LRUCache.new(4)
p l.add(5)
p l.add(6)
p l.add(5)
p l.add(8)
p l.add(10)
p l.show