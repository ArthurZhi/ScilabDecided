// Copyright (C) 2017 - KNU Computer Mathematics - Ivashkevich Simon
//
// About your license if you have any
//
// Date of creation: 23.11.2017
//

////////////////// 1

path = input("Введите путь как папке, где сохранить результат","string");
try
    diary(path+'factorial.txt')
    fact = 1;
    for i=1:20
        fact=fact*i;
        disp(string('Факториал '+string(i)+' = '+ string(fact)));
    end
    diary(0)
catch
    disp('Что-то пошло не так!');
end

////////////////////// 2

path = input('Введите путь как папке, где сохранить результат','string');
try
    diary(path+'Boolean.txt');
    disp('A or B');
    a = %T;
    b = %T;
    disp("A = 1 B = 1    A or B = "+string(a|b));
    a = %T, b = %F
    disp('A = 1 B = 0    A or B = '+ string(a|b));
    a = %F, b = %T
    disp('A = 0 B = 1    A or B = '+ string(a|b));
    a = %F, b = %F
    disp('A = 0 B = 0    A or B = '+ string(a|b));
    diary(0);
catch
    disp('ERROR!');
endpath = input('Введите путь как папке, где сохранить результат','string');
try
    diary(path+'Boolean.txt');
    disp('A or B');
    a = %T;
    b = %T;
    disp("A = 1 B = 1    A or B = "+string(a|b));
    a = %T, b = %F
    disp('A = 1 B = 0    A or B = '+ string(a|b));
    a = %F, b = %T
    disp('A = 0 B = 1    A or B = '+ string(a|b));
    a = %F, b = %F
    disp('A = 0 B = 0    A or B = '+ string(a|b));
    diary(0);
catch
    disp('ERROR!');
end

////////////////////////////// 3

a = input("введите a: ")
b = input("введите b: ")
с = input("введите c: ")

disp((c^3/13)*(a+b)^2*sin(c))
end
