class SetAsArray < Set

    def insert(item)
        @array[item] = true
    end

    def member?(item)
        @array[item]
    end

    def withdraw(item)
        @array[item] = false
    end

end
