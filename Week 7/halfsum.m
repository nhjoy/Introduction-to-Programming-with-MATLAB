function summa=halfsum(M)
    [row, column] = size(M);
    c = 0;
    for i=2:row
        for j=i:column
            c = c +M(i, j);
        end
        summa = c;
    end
end