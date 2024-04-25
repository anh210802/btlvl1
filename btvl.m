syms x y t 
%% nhap so lieu 
m= input('Nhap khoi luong vat (kg): '); 
v0= input('Nhap van toc ban dau (m/s): '); 
h =input('nhap he so luc can (kg/s):'); 
t0=input('nhap thoi gian t(s)='); 
i =1 ; 
g=9.8; 
%% tinh toan ve do thi 
while i<2  continueForLoop = true;%tao vong lap de nhap cac gia tri goc khac nhau 
a=input('nhap goc nem alpha(deg):');  
x=dsolve('D2x+(h/m)*Dx=0','x(0)=0','Dx(0)=v0*cosd(a)','t'); 
x=eval(x); 
y=dsolve('D2y+(h/m)*Dy+g=0','y(0)=0','Dy(0)=v0*sind(a)','t'); 
y=eval(y); 
b=ezplot(x,y);hold on ;xlabel('m');ylabel('m');%ve do thi voi truc x,y theo m  
title('chuyen dong cua vat trong khong gian Oxy');%dat ten do thi 
set(b,'Color',rand(1, 3)); 
c=input('tiep tuc ?(Yes(1)/No(0)):'); %hoi de tiep tuc chuong trinh 
if c==0 
i=i+1; end; %neu chon No ,i se duoc them 1 de huy vong lap 
end
