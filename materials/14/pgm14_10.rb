def binom(n, m)
    b = [0] * (n + 1)
    b[0] = 1
    for i in 1 ..  n
        b[i] = 1
        j = i - 1
        while j > 0
            b[j] += b[j - 1]
            j -= 1
	end
    end
    return b[m]
end
