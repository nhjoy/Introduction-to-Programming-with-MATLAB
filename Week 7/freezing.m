function numfreeze=freezing(V)
    w = V(V<32);
    logi = logical(w);
    numfreeze = sum(logi);
end