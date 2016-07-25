def alphabetize(arr)
  # code here
  esperanto= "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
  esperanto_hash = {}
  
  x=0 
  while x < esperanto.length do
    esperanto_hash[esperanto[x]] = x+1
    x += 1
  end
esperanto_hash[" "] = 0
    arr.sort_by! do |x|
            [esperanto_hash[x[0]],esperanto_hash[x[1]],esperanto_hash[x[2]],esperanto_hash[x[3]],esperanto_hash[x[4]],esperanto_hash[x[5]],esperanto_hash[x[6]]]
    end

arr
end