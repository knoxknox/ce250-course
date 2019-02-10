# 24
module Algorithms

  def Algorithms.equivalenceClasses(input, output)
    line = input.readline
    p = PartitionAsForest.new(line.to_i)
    for line in input.readlines
      words = line.split
      i = words[0].to_i
      j = words[1].to_i
      s = p.find(i)
      t = p.find(j)
      if not s.equal?(t)
        p.join(s, t)
      else
        output.puts "redundant pair: %d, %d" % [i, j]
      end
    end
    output.puts p
  end

end
