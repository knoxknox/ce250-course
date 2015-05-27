module Algorithms

  def Algorithms.wordCounter(input, output)
    table = ChainedHashTable.new(1031)
    for line in input.readlines
      for word in line.split
        assoc = table.find(Association.new(word))
        if assoc.nil?
          table.insert(Association.new(word, 1))
        else
          assoc.value += 1
        end
      end
    end
    output.puts table
  end

end
