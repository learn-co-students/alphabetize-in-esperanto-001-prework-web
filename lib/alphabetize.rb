require 'pry'
ESPERANTO_ALPHABET = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"

def alphabetize(arr)
  # code here
  ascii = "@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\"
  arr.sort_by{|string| string.tr(ESPERANTO_ALPHABET, ascii)}
end
