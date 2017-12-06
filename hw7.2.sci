//
function rez=IntTo2(x)  // перевод в двоичную систему исчисления
    rez=0
    while x>0
        y=modulo(x,2)
        rez=10*rez+y
        x=int(x/2)
        
    end
endfunction
