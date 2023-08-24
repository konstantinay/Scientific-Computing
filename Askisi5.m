clear; close all; clc
%Author: K.Yfanti, AM 1054972, Date: 10/1/2022

m = 32;
nb = m;
n = 64;

T = toeplitz([4,-1,zeros(1,m-2)]);
S = blkToeplitzTrid(n,inv(T),T^2,T);

[val,brow_idx,bcol_ptr] = sp_mx2bccs(S,nb);

y=eye(n*m,1);
x=ones(n*m,1);
yk = y;

yk = yk + S*x;
[y]=spmv_bccs(y, x, nb, val, brow_idx, bcol_ptr);

e = norm(yk - y);