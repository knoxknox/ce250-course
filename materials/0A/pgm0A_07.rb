class Person
  MALE = 1
  FEMALE = 0

  def initialize(name, sex)
    @name, @sex = name, sex
  end

  def to_s
    @name.to_s
  end

end
