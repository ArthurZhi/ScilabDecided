
//
function rez=mod(x,b)   // вычисляем 10^8! (mod 5463458053)
    if x>b
        rez=0
    else
        rez=1
        for i=1:rez
            rez=modulo(rez*i,b)       // пока x>b считаем результат как постояный остаток от деления rez*i,b
        if rez==0
            break
        end
        end
    end
endfunction
