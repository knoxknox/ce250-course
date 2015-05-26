class LinkedList
  class Element
    attr_accessor :succ
    attr_accessor :datum

    def initialize(list, datum, succ)
      @list = list
      @datum = datum
      @succ = succ
    end

  end
end
