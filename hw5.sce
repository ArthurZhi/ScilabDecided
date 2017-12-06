
//
//-------#1-------//

function p=prost(n,a)                  //функция проверки числа на псевдопростое число Ферма
    if modulo(a**(n-1)-1,n)==0 then
        p=%t
    else 
        p=%f
    end
endfunction
n=10**2
k=0    //счетчик
for i=1:n                     // проверяем сколько существует псевдопростых чисел Ферма до n=10^2
    if prost(i,2)==%t then
        k=k+1
    end
end
disp(k)
a=[]
for i=1:10^7         // генерируем 10^7 простых чисел 
    x=rand()
    x=x*10^10
    format(13)
    x=int(x)
    a(i)=x
end
countprost=0      // счетчи простых чисел
for i=1:10^7
    if format(a(i))==a(i) then       // находим сколько  чисел среди 10^7 псевдопростых чисел Ферма
        countprost=countprost+1
    end
end
disp(countprost)
countf=0
b1=int(rand()*10)     // генерируем 3 случайные базы
b2=int(rand()*10)
b3=int(rand()*10)
for i=1:10^7  // теперь найдем кол-во чисел которые проходят тест Ферма по трем случайным базам
    if (prost(a(i),b1)) || (prost(a(i),b2)) || (prost(a(i),b3)) then   
        countf=countf+1
    end
end
disp(countf)




//-------#2-------//


function f=fun(n)   // функция которая генерирует n+1 случайных чисел и находит среди них таки 2 разница
    // которых делится на n
    a=[]
    for i=1:n+1
        x=rand()*1000
        format(13)
        x=int(x)
        a(i)=x   // матрица случайных чисел
    end
    for i=1:n+1
        for j=i+1:n+1
            if modulo(abs(a(i)-a(j)),n)==0 then   // проверка на делимость
                f=[a(i),a(j)]   // искомые 2 числа
            end
        end
    end
endfunction
time2=timer();
disp(time2)



//-------#3-------//

timer();

function n=IntToB(x,b)  // функция которая переводит число x из 10-тичной системы исчисления
    // в систему счисления по основания b
    n=''
    while x>0
        y=string(modulo(x,b))
        n=y+n
        x=int(x/b)
    end
    n=evstr(n)
endfunction
function p=palin(q)      // функция проверки на палиндромность
    p=%t
    k=1
    while 10^k<q
        k=k+1
    end
    i=1
    while i<=k
        a=modulo((int(q/10)^(k-i)),10)
        b=modulo(q,10)
        if b~=a then
            p=%f
            break
        end
        i=i+2
        q=int(q/10)
    end
endfunction
//находим кол-во чисел которые меньше 10^6 и являются палиндромами одновременно в ситсемах исчисления 
//по основания 2 и 3
k=0
for i=1:10^6
    if(palin(IntToB(i,2)))==%t & (palin(IntToB(i,3)))==%t then
        k=k+1
    end
end
disp(k)




//-------#4-------//
function g=gcd(a,b)     // функция нахождения кол-ва шагов в алгоритме Эвклида для ахождения НОДа двух чисел
    g=0
    while b
        x=a
        a=b
        b=modulo(x,b)
        g=g+1
    end
    g=g-1
    
endfunction


//-------#6-------//
// для двух заданных точек находим все точки с целочисленными координатами на отрезке 
x1=input('Введите x1')
y1=input('Введите y1')// вводим координаты двух точок
x2=input('Введите x2')
y2=input('Введите y2')
X=[x1,x2];
Y=[y1,y2];
plot(X,Y,'r','-')  // строим график отрезка

for i=x1:x2    // проверкака на целочисленные координаты
    y=((y2-y1)/(x2-x1))*i+((y1-x1)/(x2-x1))
    if modulo(y,1)==0 then
        a=i
        plot(a,y,'xb')
    end
end























