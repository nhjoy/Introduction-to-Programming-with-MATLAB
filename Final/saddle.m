function indices=saddle(M)
[m,n] = size (M);
indices=[];%we want an empty matrix if there r no saddle points
for i=1:m; %going thru all the rows and each element of the row.
    maxi=max(M(i,:));% finding the max of the elements of the specific row.
    for j=1:n;% running thru all the coloumns and each element of the column .
        mini=min(M(:,j));% finding the min of the elements of each column.
        if maxi==mini%checking if the max of a row is same as the min of a column, if yes then 
            indices=[indices;i j];% indices will give null matrix in first column and i and j in the next row 
        end
    end
end