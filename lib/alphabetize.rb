ESPERANTO_ALPHABET = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"

ESPERANTO_ALPHABET_KEY = {}

ESPERANTO_ALPHABET.each_char.with_index do |v,i|
  ESPERANTO_ALPHABET_KEY[v] = (i < 26 ? i + 65 : i + 71).chr
end

def alphabetize(arr)
  # code here
  arr.sort_by{ |x| x.split.map{|y| y.chars.map{|z| ESPERANTO_ALPHABET_KEY[z]}.join} }
end