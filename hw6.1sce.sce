
//
//------#1------//
function [sq,r]=vec(x1,y1,x2,y2,x3,y3)
    //модули векторов
    absx=sqrt(x1^2+x2^2+x3^2)
    absy=sqrt(y1^2+y2^2+y3^2)
    //скалярное произведение
    sc=x1*y1+x2*y2+x3*y3
    //угол между векторами
    alph=acos(sc/(absx*absy))
    
    sq=absx*absy*sin(alph)    //площадь параллелограмма
    
    A=det([x2,x3;y2,y3])   //координаты векторного произведения
    B=det([x1,x3;y1,y3])
    C=det([x1,x2;y1,y2])
    r=[A,B,C]
    
endfunction

function s=area(x1,x2,x3,y1,y2,y3,z1,z2,z3)      // площадь треугольника
    A=[x1,x2,x3]
    B=[y1,y2,y3]
    C=[z1,z2,z3]
    AB=B-A
    AC=C-A
    
    
    [x,y]=vec(AB(1,1),AB(1,2),AB(1,3),AC(1,1),AC(1,2),AC(1,3))
    s=[x,y]/2
endfunction
