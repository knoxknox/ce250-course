# 10
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

# 11
class Association
  attr_reader :key
  attr_accessor :value
end

# 12
class Association

  def compareTo(assoc)
    assert { is_a?(assoc.type) }
    key <=> assoc.key
  end

  def to_s
    "%s{%s, %s}" % [type.name, @key.to_s, @value.to_s]
  end

end
