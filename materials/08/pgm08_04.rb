class Container < AbstractObject

  def hash
    result = 0
    each do |obj|
      result += obj.hash
    end
    result += type.name.hash
    return result
  end

end
