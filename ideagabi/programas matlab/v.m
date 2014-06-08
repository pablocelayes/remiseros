% vector de la parte A
a=zeros(R*(R-1),1);

% vector de la parte B
b=ones((N-1)*R,1);

% vector de la parte C

c=[u2*ones(R,1);-l2*ones(R,1);u1*ones(R,1);-l1*ones(R,1)];

bdes=[a;b;c];

% vector de la parte Aeq

beq=c1*ones(N,1);
for i=1:N/7
    beq(6+7*(i-1))=c2;
    beq(7+7*(i-1))=c2;
end

