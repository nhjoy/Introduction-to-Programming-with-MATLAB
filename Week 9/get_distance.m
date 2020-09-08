function distance=get_distance(alpha,beta)
 [~,~,d]=xlsread('Distances.xlsx');% to read values 
 [m,n]=size(d);% to find the size of d interms of matrix dimensions mxn 
 
 s=strcmp(alpha,d(1,1:n));% comparing each string of one row of sheet with given name of the city say alpha
p=(sum(s==1));% aftr comparing output will be logical 1 or 0, so, we get max one logical 1 value and all other zeros ,so sum will be 1+n(0)=1
if p==0 %if p==0,no matching city,,,
   distance= -1;
   return
end

t=strcmp(beta,d(1,1:m));
q=(sum(t==1));
if q==0
distance= -1;
return
end
distance=d{find(s==1),find(t==1)};%find will given the index value of t==1 and s==1