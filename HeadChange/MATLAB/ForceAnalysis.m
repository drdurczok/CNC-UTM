function M = ForceAnalysis(phi,B,P,F)
    % For static configurations B = [0 0 0 0 0 0 0]
    
    A = [0 1 0 0 0; 1 0 -1 0 0; 0 l(1)*sin(phi(1)) -l(1) 0 0;
        0 1 0 -1 0; 0 0 1 0 -1; 0 -l(2)*cos(phi(2)) l(2)*sin(phi(2)) 0 0];

    C = [-B(1)+P;
        B(2);
        l(3)*B(2)-l(3)*tan(phi(1))*B(1);
        sin(phi(2))*B(3)-cos(phi(2))*B(5);
        cos(phi(2))*B(4)+sin(phi(2))*B(6)-F;
        l(4)*B(7)-l(5)*sin(phi(2))*F];

    M = A/C; %[RA, RBx, RBy, RCx, RCy]
end

%TODO
%We may relate phi(2) to phi(1)
%Velocity and Acceleration calculations
%Inertial force calculations
%Input relation between F and P