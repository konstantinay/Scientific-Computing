function [val,brow_idx,bcol_ptr] = sp_mx2bccs(A,nb)
%Author: K. Yfanti, AM 1054972, Date: 7/1/2022

d = size(A,1)/nb;
dim = ones(1,d)*nb;
b = mat2cell(A, dim, dim);

val = [];
brow_idx = [];
bcol = [];

%columns
for i=1:d
    %rows
    for j=1:d
        if(any(b{j,i},'all'))
            %values
            block = cell2mat(b(j,i));
            block = block(:)';
            val = [val block];       
            
            %row index
            brow_idx = [brow_idx j];
            
            %column pointer
            bcol = [bcol i];            
        end
    end
end

bcol_ptr = [1 cumsum(histc(bcol, 1:d)) + 1];
end