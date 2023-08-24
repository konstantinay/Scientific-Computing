function [y]=spmv_bccs(y, x, nb, val, brow_idx, bcol_ptr)
%Author: K. Yfanti, AM 1054972, Date: 9/1/2022

val = val';
x = reshape(x,[nb, length(x)/nb]);
y = reshape(y,[nb, length(y)/nb]);

k_last = 1;
offset = 1;

n = length(bcol_ptr);

for j=1:n-1
    %vriskw th diafora stous pointers twn sthlwn gia na dw posa non-zero
    %blocks exw ana sthlh
    k = bcol_ptr(j+1) - bcol_ptr(j);

    for i = k_last:k_last + k - 1
        %gia na pairnw tis times ana block
        value = reshape(val(offset:offset+nb^2-1),[nb nb]);
        %pollaplasiazw me to x kai ananewnw to y
        y(:,brow_idx(i)) = y(:,brow_idx(i)) +  value*x(:,brow_idx(i));

        offset = offset + nb*nb; 
    end    
    k_last = i+1;
end
y = y(:);
end