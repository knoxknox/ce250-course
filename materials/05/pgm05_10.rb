class Association < AbstractObject

  def initialize(*args)
    case args.length
    when 1
      @key = args[0]
      @value = nil
    when 2
      @key = args[0]
      @value = args[1]
    else
      raise ArgumentError
    end
  end

end
