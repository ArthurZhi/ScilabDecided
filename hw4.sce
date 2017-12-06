
//
/*timer();
//----------#1-----------//

disp(primes(10^6))
time1=timer();

//----------#2----------//
timer();
x=primes(10^6)  
k=0
for i=1:(length(x)-1)
    if x(i+1)-x(i)==2 then
        k=k+1
    end
end
disp(k)
time2=timer();


//----------#3----------//
timer();
n=input('Введите n')
function result=phi(n)
    result=n
    for i=2:int(sqrt(n))
        if modulo(n,i)==0 then
            while modulo(n,i)==0
                n=n/i
            end
            result=result - result/i
        end
     
    end
    if n>1 then
        result=result - result/n
    end
endfunction
phi(n)
time3=timer();


//----------#4----------//
timer();
function nln=nln(n)
    nln=n./log(n)
endfunction

n=100:1:200
subplot(121)
plot(n,phi)
subplot(122)
plot(n,nln)
time4=timer();
*/

