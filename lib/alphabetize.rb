ALPHABET = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"

def alphabetize(arr)
  # code here
  esperanto_hash = {}
  ALPHABET.chars.each_with_index {|letter,index| esperanto_hash[letter] = index+1 }
  arr.sort_by do |word_or_phrase|
    array_representation = word_or_phrase.chars
    array_representation.delete(" ")
    array_representation.map { |letter| esperanto_hash[letter] }
  end
end