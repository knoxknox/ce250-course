class Visitor < AbstractObject
  abstractmethod :visit

  def done?
    false
  end
end
