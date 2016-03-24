
def alphabetize(arr)
  alphabet = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz".split("")
  index = 0

  loop do
    letter = arr[0][index]
    if arr.all? { |phrase| phrase[index] == letter }
      index += 1
    else
      break
    end
  end
  
  arr.sort_by do |phrase|
    alphabet.find_index { |letter| letter == phrase[index] }
  end
end
