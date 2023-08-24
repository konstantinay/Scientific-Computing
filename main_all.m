clear; close all; clc
%Author: K. Yfanti, AM 1054972, Date: 10/1/2022
%This is a file to help check functions 1-4 individually.

%%%%%% askisi 1 %%%%%%
% A = [0.39, 0.18, 0.82,0;0,0.54,0,0;0.94,0.41,0.17,0;0,0,0.71,0.1];
% [val,row_ip,col_ip] = sp_mat2latex(A,'CSC');

%%%%% askisi 2 %%%%%%
% {n=5;
% 
% A = 2*ones(2,2);
% B = 3*A;
% C = 4*A;
% 
% out = full(blkToeplitzTrid(n,B,A,C));

%%%%%% askisi 3 %%%%%%
% n = 2;
% A = [0,0,0,0,4,2;
%    0,0,1,1,2,2;
%    6,3,0,0,0,0;
%    3,0,0,0,0,0;
%    2,1,0,0,2,1;
%    1,1,0,0,1,1];
% 
% [val,brow_idx,bcol_ptr] = sp_mx2bccs(A,n);

%%%%%% askisi 4 %%%%%%
% nb = 2;
% A = [0,0,0,0,4,2;
%     0,0,1,1,2,2;
%     6,3,0,0,0,0;
%     3,0,0,0,0,0;
%     2,1,0,0,2,1;
%     1,1,0,0,1,1];
% 
% [val,brow_idx,bcol_ptr] = sp_mx2bccs(A,nb);
% 
% y = eye([length(A),1]);
% x = ones([length(A),1]);
% 
% yk = y;
% yk = yk + A*x;
% 
% [y]=spmv_bccs(y, x, nb, val, brow_idx, bcol_ptr);

