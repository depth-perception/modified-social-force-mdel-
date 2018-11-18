function [X;Y]=JD(X1,Y1,X2,Y2)
X1=[0,0];
Y1=[10,0];
X2=[5,4];
Y2=[5,1];

% function [X Y]= node( X1,Y1,X2,Y2 )
if X1(1)==Y1(1)&X2(1)==Y2(1)
    X=[];
    Y=[];
end
if X1(1)==Y1(1)&X2(1)~=Y2(1)
    X=X1(1);
    k2=(Y2(2)-X2(2))/(Y2(1)-X2(1));
    b2=X2(2)-k2*X2(1); 
    Y=k2*X+b2;
end
if X2(1)==Y2(1)&X1(1)~=Y1(1)
    X=X2(1);
    k1=(Y1(2)-X1(2))/(Y1(1)-X1(1));
    b1=X1(2)-k1*X1(1);
    Y=k1*X+b1;
end
if X1(1)~=Y1(1)&X2(1)~=Y2(1)
    k1=(Y1(2)-X1(2))/(Y1(1)-X1(1));
    k2=(Y2(2)-X2(2))/(Y2(1)-X2(1));
    b1=X1(2)-k1*X1(1);
    b2=X2(2)-k2*X2(1);
    if k1==k2
       X=[];
       Y=[];
    else
    X=(b2-b1)/(k1-k2);
    Y=k1*X+b1;
    end
end
if X<X1(1)&&X<Y1(1)||Y<X1(2)&&Y<Y1(2)||X>X1(1)&&X>Y1(1)||Y>X1(2)&&Y>Y1(2) || X<X2(1)&&X<Y2(1)||Y<X2(2)&&Y<Y2(2)||X>X2(1)&&X>Y2(1)||Y>X2(2)&&Y>Y2(2)
    X=[];
    Y=[];
end
% end