% Build a matrix called "matrix" using instrictions of input "cellvec"
function matrix = sparse2matrix(cellvec)
    % first we build a default matrix with size ii*jj
    % we use 1st element of "cellvec" to get the size of matrix
    for ii = 1:cellvec{1}(1,1) 
        for jj = 1:cellvec{1}(1,2)
            % all elements of matrix equals to the 2nd element of "cellvec" 
            matrix(ii,jj) = cellvec{2};
        end
    end
    % now we need to change elements of our default matrix
    % instructions for place and value of this elements comes in "cellvec"
    % from 3rd element till the end of "cellvec"
    for zz = 3:length(cellvec)
    % we call "matrix" elements and assign values to them from every 3rd element of subarrays of "cellvec"
    matrix(cellvec{zz}(1,1),cellvec{zz}(1,2)) = cellvec{zz}(1,3);
    end
end