def alphabetize(arr)
  esperanto = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"

  arr.sort_by do |a| 
    a.split("").map do |chr| 
      esperanto.index(chr)
    end
  end
end