
//
//----------#5-----------//
/*timer();
a=[]
for i=1:10^7
    x=rand()
    x=x*10^10
    format(13)
    x=int(x)
    a(i)=x
end
count=0
for i=1:10^7
    if factor(a(i))==a(i) then
         count=count+1
    end
end
percent=100*count/10^7
disp(percent)
time5=timer();
disp(time5)


*/

//----------#6-----------//
/*timer();
b=[]
for i=1:10^7
    y=rand()
    y=y*10^10
    format(13)
    y=int(y)
    if (modulo(y,2)==0) || (modulo(y,3)==0) || (modulo(y,5)==0) || (modulo(y,7)==0) || (modulo(y,11)==0) then
        b(i)=y
     end
end
count2=0
for i=1:10^7
    if factor(b(i))==b(i) then
         count2=count2+1
    end
end
percent2=100*count2/10^7
disp(percent2)
time6=timer();
disp(time6)
*/

//----------#7-----------//
/*timer();
pros1=primes(10^5);
for i=1:(size(pros1)(2))
    if modulo(pros1(i),2)==0 then
        pros1(i)=[];
    end
end
e1=0;   
e2=0;
pros2=pros1;
for p=1:10^5
    for q=1:10^5
        if (2^p+1~=3*q) then
            e1=p;
            e2=q;
            break;
        end
    end
end
disp(e1,' ',e2);
time7=timer();



*/

//----------#8-----------//
/*timer();
p=[3,1,4,1,5,9,2,6,5,3,5,8,9,7,9,3,2,3,8,4,6,2,6,4,3,3,8,3,2,7,9,5,0,2,8,8,4,19,7,1,6,9,3,9,9,3,7,5,1,0,5,8,2,0,9,7,4,9,4,4,5,9,2,3,0,7,8,1,6,4,0,6,2,8,6,2,0,8,9,9,8,6,2,8,0,3,4,8,2,5,3,4,2,1,1,7,0,6,7,9,8,2,1,4,8,0,8,6,5,1,3,2,8,2,3,0,6,6,4,7,0,9,3,8,4,4,6,0,9,5,5,0,5,8,2,2,3,1,7,2,5,3,5,9,4,0,8,1,2,8,4,8,1,1,1,7,4,5,0,2,8,4,1,0,2,7,0,1,9,3,8,5,2,1,1,0,5,5,5,9]
size_of_row=180;

function bool=isprime(num)
    
    a=factor(num);
    
    if (size(a) (1,2))==1 then
        bool=%t;
    else
        bool=%f;
    end
endfunction

 
for i=1:180
    
    m=p(i)*10^9+p(i+1)*10^8+p(i+2)*10^7+p(i+3)*10^6+p(i+4)*10^5+p(i+5)*10^4+p(i+6)*10^3+p(i+7)*10^2+p(i+8)*10^1+p(i+9);
    
    if isprime(m)==%t then
        
        format(13);
        
        disp(i);
        
        disp(m);
        
        break
    else
        
        continue
    end
end
time8=timer();
*/











