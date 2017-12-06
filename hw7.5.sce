//


// 2 функции которые принимают a,e,n и возвращают a^e mod n


function rez=ModlarExp1(a,e,n)  //последовательно вычисляет степени а по модулю n
    timer();
    rez=modulo(a,n)
    for i=2:e
        rez=modulo(rez*a,n)
    end
    time1=timer();
    rez=[rez,time1]
endfunction

function rez=ModlarExp2(a,e,n)     // последовательно вычисляет a^2^i mod n
    timer();
    time2=timer();
    rez=[rez,time2]
endfunction
