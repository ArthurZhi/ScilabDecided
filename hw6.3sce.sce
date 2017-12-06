// функция преобразования общего уравнения прямой в парметрическое
    rez=list()
    rez(1)=-C/A
    rez(2)=-C/B
    rez(3)=A
    rez(4)=-B
    
endfunction

function rez=ParamToBase(x0,y0,l,m)// функция преобразования параметрического уравнения прямой в общее
    rez=[]
    rez(1)=m
    rez(2)=-l
    rez(3)=y0*l-x0*m
endfunction




