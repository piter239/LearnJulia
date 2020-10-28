#fin = open("words.txt")

function hasno_c(s, c)
    return ! occursin(c, s)
end

function count_no_c(c)
    numb = hits =0
    for line in eachline("words.txt")
        numb += 1
        if hasno_c(line, c)
            hits += 1
            # println(line)
        end
    end
    print("Only $(hits) out of $(numb) words has no $(c). This is $(100.0 * hits / numb)%\n")
end

function avoids(word, forbidden)
    for c in forbidden
        if occursin(c, word)
            return false
        end
    end
    return true
end

function count_avoided()
    while true
        print("input characters to avoid: ")
        forbidden = readline()
        if length(forbidden) == 0
            break
        end
        println(count(x->avoids(x,forbidden), eachline("words.txt")))
    end
end

abc = [ Char(Int('a') + i) for i in 0:25]

remainds = [ (c, count(x->avoids(x,c), eachline("words.txt"))) for c in abc]

sort!(remainds, by= x-> - x[2])

"""
Exercise 9-3
remainds = [('q', 112177), ('j', 112062), ('x', 111118), ('z', 110358), ('w', 105541), ('v', 104917), ('k', 104831), ('f', 102532), ('y', 100668), ('b',
97504), ('h', 94713), ('m', 91335), ('p', 90840), ('g', 88830), ('u', 84934), ('c', 83343), ('d', 83161), ('l', 73676), ('o', 69152), ('t', 66530), ('n', 64127), ('r', 58908), ('a', 57196), ('i', 53495), ('s', 49006), ('e', 37641)]
26-element Array{Tuple{Char,Int64},1}:

qjxzw leaves 96425

aeotbidulm оставляет всего 29 слов. Но каких?

"""

function print_no_f(forbidden)
    numb = hits =0
    for line in eachline("words.txt")
        numb += 1
        if avoids(line, forbidden)
            hits += 1
            println(line)
        end
    end
    print("Only $(hits) out of $(numb) words has no $(forbidden). This is $(100.0 * hits / numb)%\n")
end


# count_no_e()
