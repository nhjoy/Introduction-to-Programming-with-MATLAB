function k=next_prime(n)
    c = n+1;
    while isprime(c) == false
        c = c+1
    end
    k = c
end