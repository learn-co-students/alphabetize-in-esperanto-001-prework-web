ESPERANTO_ALPHABET = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"

def alphabetize(arr)
  arr.sort_by! do |phrase|
    phrase.tr(ESPERANTO_ALPHABET, 'a-z')
  end
end