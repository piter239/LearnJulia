function encode(s)

    function print_freq(countc, c)
        if countc > 1
            return string(countc,c)
        else
            return string(c)
        end
    end

    res = ""
    prevc = nothing
    countc = 0
    for c in s
        if countc == 0
            prevc = c
            countc = 1
            continue
        elseif c == prevc
            countc += 1
            continue
        else
            res = res * print_freq(countc,prevc)
            countc = 1
            prevc = c
        end
    end
    if countc > 0
        res = res * print_freq(countc,prevc)
    end
    return res
end


function decode(s)
end
