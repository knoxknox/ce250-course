class ChainedScatterTable < HashTable

  NULL = -1

  class Entry

    def initialize(obj, succ)
      @obj = obj
      @succ = succ
    end

    attr_accessor :obj

    attr_accessor :succ

  end

end
