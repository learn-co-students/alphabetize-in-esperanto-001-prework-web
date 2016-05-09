
ESPERANTO_ALPHABET = 'abcĉdefgĝhĥijĵklmnoprsŝtuŭvz'
def alphabetize(arr)
  # code here
  index = 0
  sorted_arr = arr
  until sorted_arr != arr
    sorted_arr = arr.sort_by { |word|
      ESPERANTO_ALPHABET.index(word[index])
    }
    index += 1
  end
  sorted_arr
end
