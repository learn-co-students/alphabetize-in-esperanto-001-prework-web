def alphabetize(arr)
  # code here
  new_array = []
  alphabet = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"

  # sort through the phrases
  new_array = arr.sort_by do |i|
    # remove all of the spaces from each string
    no_spaces = i.delete(" ")

    # convert the string to an index of characters
    char_array = no_spaces.split(//)
    num_array = []

    # create an array of their positions in the alphabet for each character
    char_array.each do |char|
      ind = alphabet.index(char)
      num_array << ind
    end

    num_array
  end
  new_array
end
