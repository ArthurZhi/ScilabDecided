
//
function rez=mdob(A,B,C)  // A, B, C - вектора
    rez=det([A(1),A(2),A(3); B(1),B(2),B(3); C(1),C(2),C(3)])   // вычсляем поределитель матрицы
    
endfunction

function rez=iskomplanar(A,B,C)   // функция проверки на компланарность
    rez=%f
    if mdob(A,B,C)==0 then    // три вектора компланарные когда их mdob равен 0
        rez=%t
    end
endfunction

function rez=isoneplane(x1,y1,z1,x2,y2,z2,x3,y3,z3,x4,y4,z4)   
    //функция проверки лежат ли 4 точки на одной плоскости
    A=[]
    B=[]
    C=[]
    
    A(1)=x2-x1
    A(2)=x3-x1
    A(3)=x4-x1
    B(1)=y2-y1
    B(2)=y3-y1
    B(3)=y4-y1
    C(1)=z2-z1
    C(2)=z3-z1
    C(3)=z4-z1
    
    rez=iskomplanar(A,B,C)
    
endfunction
