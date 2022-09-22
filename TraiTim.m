syms l1 l2 l3 t t1 t2 c1 s1 c2 s2 e
l1 = 5; 
l2 = 5;
for t=-1:0.1:6*pi
    X = (2 - 2*sin(t) + sin(t)*sqrt(abs(cos(t))) / (sin(t) + 1.4))*cos(t);
    Y = (2 - 2*sin(t) + sin(t)*sqrt(abs(cos(t))) / (sin(t) + 1.4))*sin(t);
    C2 = (X^2+Y^2-l1^2-l2^2)/(2*l1*l2);
    S2 = sqrt(abs(1-C2^2));
    t2 = atan2(S2,C2);
    C1 = (l1+l2*C2)*X+l2*S2*Y;
    S1 = (l1+l2*C2)*Y-(l2*S2)*X;
    t1 = atan2(S1,C1);
    Px = l1*cos(t1)+l2*cos(t1+t2);
    Py = l1*sin(t1)+l2*sin(t1+t2);
    axis([-5 5 -5 5]);
    
    subplot(2,1,1);
    plot(t,t2*180/pi,'*');  
    pause(0.1);
    xlabel('t'); ylabel('rotation')
    hold on
    subplot(2,1,2);
    plot(Px,Py,'*');  pause(0.1);
    xlabel('x(cm)'); ylabel('y(cm)'); 
    pause(0.1);
    hold on
end