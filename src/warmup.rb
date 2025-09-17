def fib(n)
  return [] if n == 0
  return [0] if n == 1

  seq = [0, 1]
  while seq.length < n
    seq << seq[-1] + seq[-2]
  end
  seq
end

def isPalindrome(n)
    str = n.to_s
    str == str.reverse
end

def nthmax(n, a)
    sorted = a.uniq.sort.reverse
    sorted[n]
end

def freq(s)
    return "" if s.empty?
    counts = Hash.new(0)
    s.each_char { |ch| counts[ch] += 1 }
    counts.max_by { |_, v| v }[0]
end

def zipHash(arr1, arr2)
    return nil unless arr1.length == arr2.length
    Hash[arr1.zip(arr2)]
end

def hashToArray(hash)
    hash.map { |k, v| [k, v] }
end
