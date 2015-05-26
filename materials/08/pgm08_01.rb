class Fixnum

    BITS = 31
    MAX =  1073741823
    MIN = -1073741824

end

class Integer

    def hash
	return self & Fixnum::MAX
    end

end
