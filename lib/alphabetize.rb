require "pry"

def alphabetize(arr)
  sorted_arr = []

  esper_alph = " abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
  esper_hash = {}
  esper_alph.split("").each_with_index do |letter, index|
    esper_hash[letter] = index
  end

  while !arr.empty?
    first_word_char = esper_hash.count
    first_word = ""
    arr.each_with_index do |word|
      if esper_hash[word[0]] < first_word_char
        first_word_char = esper_hash[word[0]]
        first_word = word
      elsif esper_hash[word[0]] == first_word_char
        chr = 0
        while chr < word.length - 1
          chr += 1
          if esper_hash[word[chr]] < esper_hash[first_word[chr]]
            first_word = word
            break
          elsif esper_hash[word[chr]] > esper_hash[first_word[chr]]
            break
          end
        end
      end
    end
    sorted_arr << first_word
    arr.delete(first_word)
  end

  sorted_arr
end