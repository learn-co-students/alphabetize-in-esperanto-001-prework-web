ESPERANTO_ALPHABET = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"

def alphabetize(arr)
  # code here
  sorted_array = arr.sort
  sorted_array = sorted_array.sort_by { |a|
    ESPERANTO_ALPHABET.index(a[0])
  }
end