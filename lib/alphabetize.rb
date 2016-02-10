ALPHABET = " abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"

def compare(x, y)
  # x <=> y
  n = [x.length, y.length].min - 1
  (0..n).each do |i|
    if ALPHABET.index(x[i]) < ALPHABET.index(y[i])
      return -1
    elsif ALPHABET.index(x[i]) > ALPHABET.index(y[i])
      return 1
    end
  end
end


def alphabetize(array)
  array.sort do |x,y| 
    compare(x,y)
  end   

  # code here
end