ALPHABET = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"

def alphabet_hash
  alpha_hash = {}

  ALPHABET.each_char.with_index do |letter, idx|
    alpha_hash[letter] = idx
  end
  
  alpha_hash
end

def alphabetize(arr)
  new_words = nil

  arr.sort_by do |word|
    word.each_char.map do |letter|
      alphabet_hash[letter]
    end
  end
end
