def achatrevente(array)
    taille = array.length - 1
    max = 0
    indexmax = 0
    indexmin = 0
    for i in 0 .. taille
        for p in (i+1) .. taille
            if array[p] - array[i] > max
                max = array[p] - array[i]
                indexmax = p + 1
                indexmin = i + 1
            end
        end
    end
    return [indexmin, indexmax]
end

            