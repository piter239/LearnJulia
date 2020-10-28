function to_rna(dna)
    trans = Dict('G' => 'C', 'C' => 'G', 'T' => 'A' , 'A' => 'U')
    try
        return join(trans[c] for c in dna)
    catch
        throw(ErrorException("incorrect input " * dna))
    end
end

# print(to_rna("GCTA"))
