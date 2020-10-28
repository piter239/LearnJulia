"Your optional docstring here"
function distance(a, b)
    if length(a) != length(b)
        throw(ArgumentError("Hamming distance only defined for two strings of equal lengh"))
    end
    if a == ""
        return 0
    end
    # return sum(map(x -> (x[1] != x[2]), zip(a,b)))
    return sum(map(x -> !isequal(x[1], x[2]), zip(a,b)))
end

# print(distance("AAB","AAA"))
