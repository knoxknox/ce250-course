module Algorithms

  class Entry

    def initialize
      @known = false
      @distance = Fixnum::MAX
      @predecessor = Fixnum::MAX
    end

    attr_accessor :known

    attr_accessor :distance

    attr_accessor :predecessor
  end

end
