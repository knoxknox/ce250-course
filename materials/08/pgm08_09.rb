class ChainedHashTable < HashTable

    def insert(obj)
        @array[h(obj)].append(obj)
        @count += 1
    end

    def withdraw(obj)
        @array[h(obj)].extract(obj)
        @count -= 1
    end

end
