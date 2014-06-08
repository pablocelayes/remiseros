
% matriz de la restriccion -v_ij <= sum(x_it - x_jt) <= v_ij 
A=ones(R-1,N);
for i=1:R-1
    A1=zeros(R-1,N);
    A1(i,:)=-ones(1,N);
    A=[A,A1];
end
A2=A;
for j=1:R-2
    A=[zeros(R-1-j,N),A(1:end-1,1:end-N)];
    A2=[A2;A];
end
A1=-eye(R*(R-1)/2);
A=[A2,A1;-A2,A1];

% matriz de la restriccion (x_ik + x_ik+1) <= 1

B1=diag(ones(N,1))+diag(ones(N-1,1),1);
B1=B1(1:end-1,:);

B=[];
for i=1:R
    B(1+(N-1)*(i-1):(N-1)*i,1+N*(i-1):N*i)=B1;
end
B=[B,zeros((N-1)*R,R*(R-1)/2)];

% matriz de la cantidad de noches que trabaja el remisero

C1=zeros(1,N);
for i=1:N/7
    C1(6+7*(i-1))=1;
    C1(7+7*(i-1))=1;
end

C2=ones(1,N)-C1;

C3=zeros(R,N*R+R*(R-1)/2);
for i=1:R
    C3(i,1+N*(i-1):N+N*(i-1))=C1;
end

C4=zeros(R,N*R+R*(R-1)/2);
for i=1:R
    C4(i,1+N*(i-1):N+N*(i-1))=C2;
end

C=[C3;-C3;C4;-C4];

Ades=[A;B;C];

Aeq=eye(N);
for i=1:R-1
    Aeq=[Aeq,eye(N)];
end

Aeq=[Aeq,zeros(N,R*(R-1)/2)];
