"""
    count_nucleotides(strand)

The frequency of each nucleotide within `strand` as a dictionary.

Invalid strands raise a `DomainError`.

"""
function count_nucleotides(strand)
    nucl = "ACGT"
    res = Dict(c => 0 for c in nucl)
    for char in strand
        if haskey(res, char)
            res[char] += 1
        else
            throw(DomainError(char,"has to be one of the following: "*nucl))
        end
    end
    return res
end

# print(count_nucleotides("ACCCCCCAAGGTX"))
