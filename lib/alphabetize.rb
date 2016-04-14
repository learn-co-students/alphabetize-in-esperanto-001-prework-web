def alphabetize(arr)
  esperanto = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz".split("")
  two_array = []
  arr.each do |x|  
    two_array << x.split("")
  end
  two_array.sort! do |x, y|
    if x[0] != y[0]
      esperanto.index(x[0]) <=> esperanto.index(y[0])
    else
      if x[1] != y[1]
        esperanto.index(x[1]) <=> esperanto.index(y[1])
      else
        if x[5] != y[5]
          esperanto.index(x[5]) <=> esperanto.index(y[5])
        else
          if x[6] != y[6]
            esperanto.index(x[6]) <=> esperanto.index(y[6])
          end
        end
      end
    end
  end
  three_array = []
  two_array.each do |x|
    three_array << x.join
  end
  three_array
end
