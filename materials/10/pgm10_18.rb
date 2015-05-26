class MWayTree < SearchTree

    def withdraw(obj)
	raise ArgumentError if empty?
        index = findIndex(obj)
        if index != 0 and @key[index] == obj
            if not @subtree[index - 1].empty?
                max = @subtree[index - 1].max
                @key[index] = max
                @subtree[index - 1].withdraw(max)
            elsif not @subtree[index].empty?
                min = @subtree[index].min
                @key[index] = min
                @subtree[index].withdraw(min)
            else
                @count = @count - 1
                i = index
                while i <= @count
                    @key[i] = @key[i + 1]
                    @subtree[i] = @subtree[i + 1]
                    i = i + 1
		end
                @key[i] = nil
                @subtree[i] = nil
                if @count == 0
                    @subtree[0] = nil
		end
	    end
        else
            @subtree[index].withdraw(obj)
	end
    end

end
