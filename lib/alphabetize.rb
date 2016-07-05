def alphabetize(arr)
  esperanto = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"

  arr.sort_by do |phrase|
    #splits each phrase into an array of letters
    phrase.split(//).collect do |letter|
      #creates an array of the indexes of each letter in the esperanto alphabet
      #the array of indexes for each phrase are compared and sorted
      esperanto.index(letter)
    end
  end

end

