//
function rez=count(a,b) // функция которая определяет сколько битов нужно изменить в двоичной записи одного
                          //  числа чтобы получилось другое
    a=string(IntTo2(a))    // перевод в двоичную систему (из другого скрипта)
    b=string(IntTo2(b))
    while length(a)>length(b)
        b='0'+b
    end
    while length(b)>length(a)
        a='0'+a
    end
    rez=0
    for i=1:length(a)
        if part(a,i)~=part(b,i)
            rez=rez+1
        end
    end
endfunction
