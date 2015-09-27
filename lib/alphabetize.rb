require 'pry'

ESPERANTO_ALPHABET = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz "

def alphabetize(arr)
  # compare words using the sort method-- returns a sorted array
  sorted_words = arr.sort do |word1, word2|
    # custom function to compare words
    compare_esperanto_words(word1, word2)
  end
  sorted_words
end


def compare_esperanto_words(word1,word2)
  # find smallest word, and if necessary, check if the words are the same
    smallest_length = 0
    if word1.length < word2.length
      smallest_length = word1.length
    elsif word2.length < word1.length
      smallest_length = word2.length
    elsif word1.length == word2.length
      if word1.eql?(word2) == true
        return 0
      else
        smallest_length = word1.length
      end
    end

    # compare letters in each word
    count = 0
    while count < smallest_length
      if ESPERANTO_ALPHABET.index(word1[count]) < ESPERANTO_ALPHABET.index(word2[count])
        #binding.pry
        # we know word1 comes first
        return -1
      elsif ESPERANTO_ALPHABET.index(word1[count]) > ESPERANTO_ALPHABET.index(word2[count])
        # we know word2 comes first
        return 1
      end
      count += 1
    end

    # if you make it all the way through the loop, the shorter word comes first (one word is a building block of the other word)
    if smallest_length = word1.length
      return -1
    else
      return 1
    end
end