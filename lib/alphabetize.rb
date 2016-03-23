def alphabetize(arr, rev=false)
 arr.sort!
    if rev
        arr.reverse!
    end
    return arr
end