class Association

  def compareTo(assoc)
    assert { is_a?(assoc.type) }
    key <=> assoc.key
  end

  def to_s
    "%s{%s, %s}" % [type.name, @key.to_s, @value.to_s]
  end

end
