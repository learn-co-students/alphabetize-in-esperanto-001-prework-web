require 'pry'

def alphabetize(arr)
  esperanto_alphabet = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"

  esperanto_num_arr = []
  arr.each do |word|
    temp_arr = []
    word.split('').each do |letter|
      temp_arr << esperanto_alphabet.split('').index(letter)
    end
    esperanto_num_arr << temp_arr
  end

  esperanto_num_arr.sort_by! do |num_arr|
    num_arr
  end

  sorted_arr = []
  esperanto_num_arr.each do |word|
    temp_arr = []
    word.each do |letter|
      if letter == nil
        temp_arr << ' '
      else
        temp_arr << esperanto_alphabet.split('')[letter]
      end
    end
    sorted_arr << temp_arr.join('')
  end

  sorted_arr
end