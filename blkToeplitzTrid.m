function out = blkToeplitzTrid(n, B, A, C)
%Author: K. Yfanti, AM 1054972, Date: 7/1/2022

IA = speye(n);
IB = spdiags(ones(n),-1,n,n);
out = kron(IA,A) + kron(IB,B) + kron(IB.',C);

end