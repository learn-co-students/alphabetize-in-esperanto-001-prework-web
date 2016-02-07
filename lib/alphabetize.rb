require 'pry'

# answer from https://github.com/babyshoes, I needed to move past this lesson and couldn't get anyone to resopnd to me on learn after 4+ attempts and waiting over 20 hours over multiple days/attempts.

ALPHABET = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
def alphabetize(arr)
  new_arr = arr.sort_by do |a|
    a.split('').map do |ltr|
      ALPHABET.index(ltr)
    end
  end
  # binding.pry
end

