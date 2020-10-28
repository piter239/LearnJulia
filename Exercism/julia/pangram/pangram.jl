"""
    ispangram(input)

Return `true` if `input` contains every alphabetic character (case insensitive).

inline variant with isascii and isletter
"""
ispangram(input) =  26 == length(Set(filter(isascii, filter(isletter, lowercase(input)))))


"""
set intersection - after seeing this solution https://exercism.io/tracks/julia/exercises/pangram/solutions/6ff5080333c84fff9c7ca52cfbe171cf
"""
function ispangram(input)
    return intersect(Set('a':'z'), lowercase(input)) == Set('a':'z')
end

"""
set difference
"""
function ispangram(input)
    return setdiff!(Set('a':'z'), lowercase(input)) == Set()
end


# @show Set(filter(isascii, lowercase("The quick brown fox jumps over the lazy dog.")))

print(ispangram("The quick brown fox jumps over the lazy dog.α"))
