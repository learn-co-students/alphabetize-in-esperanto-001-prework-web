  require 'pry'
  ESPERANTO_ALPHABET = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"


  def alphabetize(to_sort)

    custom_sort = ->(a, b) do
      a.split('').each_with_index do |char, i|
        return ESPERANTO_ALPHABET.index(a[i]) <=> ESPERANTO_ALPHABET.index(b[i]) if a[i] != b[i]
      end
      return ESPERANTO_ALPHABET.index(' ') <=> ESPERANTO_ALPHABET.index(b[-1])
    end


    to_sort.sort(&custom_sort)

end