function value=polcheb(n,x)
    if n==1
        value=x;
    elseif n==0
        value=1;
    else
        value=2*x*polcheb(n-1,x)-polcheb(n-2,x);
    end
end
