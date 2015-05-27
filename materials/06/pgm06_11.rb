module Algorithms

  def Algorithms.calculator(input, output)
    stack = StackAsLinkedList.new
    for line in input.readlines
      for word in line.split
        if word == "+"
          arg2 = stack.pop
          arg1 = stack.pop
          stack.push(arg1 + arg2)
        elsif word == "*"
          arg2 = stack.pop
          arg1 = stack.pop
          stack.push (arg1 * arg2)
        elsif word == "="
          arg = stack.pop
          output.puts arg
        else
          stack.push(word.to_i)
        end
      end
    end
  end

end
