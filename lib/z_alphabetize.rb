require 'pry'
ESPERANTO_ALPHABET = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"


def sorting_by(to_sort)


  custom_sort = ->(a, b) do
    a.split('').each_with_index do |char, i|
      return ESPERANTO_ALPHABET.index(a[i]) <=> ESPERANTO_ALPHABET.index(b[i]) if a[i] != b[i]
    end

    return ESPERANTO_ALPHABET.index(' ') <=> ESPERANTO_ALPHABET.index(b[-1])
  end


 to_sort.sort(&custom_sort)

  #sorted_array = ['']


  #to_sort.each.with_index do |phrase,index|
  #  sorted_array << phrase
  #  phrase.split('').each.with_index do |letter|
  #    puts letter
  #  end
  #end


  #esperanto_array = esperanto_array.each.with_index do |letter, index|
  #end


# if second word to sort first letter < current word to sort first letter, switch places
# else if the first letter is the same, move to the second letter and decide


end

#sorting_by(to_sort)