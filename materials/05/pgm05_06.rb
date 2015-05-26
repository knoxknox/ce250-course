class Container < AbstractObject

  def to_s
    s = ""
    each do |obj|
      s << ", " if not s.empty?
      s << obj.to_s
    end
    type.name + "{" + s + "}"
  end

end
