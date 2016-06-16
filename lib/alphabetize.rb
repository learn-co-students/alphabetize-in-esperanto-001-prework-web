def alphabetize(arr)
  esperanto_alphabet = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz".chars
  esp_alphabet_index = (0..esperanto_alphabet.size).to_a

  esp_hash = esperanto_alphabet.zip(esp_alphabet_index).to_h

  # {"a"=>1, "b"=>2, "c"=>3, "ĉ"=>4, "d"=>5, "e"=>6, "f"=>7,
  # "g"=>8, "ĝ"=>9, "h"=>10, "ĥ"=>11, "i"=>12, "j"=>13,
  # "ĵ"=>14, "k"=>15, "l"=>16, "m"=>17, "n"=>18, "o"=>19,
  # "p"=>20, "r"=>21, "s"=>22, "ŝ"=>23, "t"=>24, "u"=>25,
  # "ŭ"=>26, "v"=>27, "z"=>28}

  arr.sort do |a_string,b_string|
    i = 0
    while esp_hash[a_string[i]] == esp_hash[b_string[i]]
      i += 1
    end

    esp_hash[a_string[i]] <=> esp_hash[b_string[i]]
  end
end



