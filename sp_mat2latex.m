function [val,row_ip,col_ip] = sp_mat2latex(A,sp_type)
%Author: K. Yfanti, AM 1054972, Date: 6/1/2022

if sp_type ~= "CSR" && sp_type ~= "CSC"
    error('sp_type must be either CSR or CSC.')
end

m = size(A, 1);

%%%%%%%CSR%%%%%%%
if sp_type == "CSR"
    %ftiaxnoume thn CSR domh
    [col_ip, row, val] = find(A.');
    row_ip = [1; cumsum(histc(row, 1:m)) + 1];
    
    %entoles latex
    val_size = size(val,1);
    
    %gia ta values
    fprintf('$$ val = \\begin{tabular}{|');    
    for i=1:val_size
        fprintf('l|');
    end
    fprintf('}\\hline \n');
    
    fprintf('%.4f ',val(1));
    for i=2:val_size
        fprintf('&%.4f ',val(i));
    end
    fprintf('\\\\ \\hline \n');
    
    fprintf('\\end{tabular}$$ \n');
    
    %gia to IA
    fprintf('$$ IA = \\begin{tabular}{|');    
    for i=1:val_size
        fprintf('l|');
    end
    fprintf('}\\hline \n');
    
    fprintf('%d ',col_ip(1));
    for i=2:val_size
        fprintf('&%d ',col_ip(i));
    end
    fprintf('\\\\ \\hline \n');
    
    fprintf('\\end{tabular}$$ \n');
    
    %gia to JA
    fprintf('$$ JA = \\begin{tabular}{|');    
    for i=1:m+1
        fprintf('l|');
    end
    fprintf('}\\hline \n');
    
    fprintf('%d ',row_ip(1));
    for i=2:m+1
        fprintf('&%d ',row_ip(i));
    end
    fprintf('\\\\ \\hline \n');
    
    fprintf('\\end{tabular}$$ \n');
        
end

%%%%%%%CSC%%%%%%%
if sp_type == "CSC"
    [row_ip, col, val] = find(A);
    col_ip = [1; cumsum(histc(col, 1:m)) + 1];
    
    %entoles latex
    val_size = size(val,1);
    
    %gia ta values
    fprintf('$$ val = \\begin{tabular}{|');    
    for i=1:val_size
        fprintf('l|');
    end
    fprintf('}\\hline \n');
    
    fprintf('%.4f ',val(1));
    for i=2:val_size
        fprintf('&%.4f ',val(i));
    end
    fprintf('\\\\ \\hline \n');
    
    fprintf('\\end{tabular}$$ \n');
    
    %gia to IA
    fprintf('$$ IA = \\begin{tabular}{|');    
    for i=1:val_size
        fprintf('l|');
    end
    fprintf('}\\hline \n');
    
    fprintf('%d ',row_ip(1));
    for i=2:val_size
        fprintf('&%d ',row_ip(i));
    end
    fprintf('\\\\ \\hline \n');
    
    fprintf('\\end{tabular}$$ \n');
    
    %gia to JA
    fprintf('$$ JA = \\begin{tabular}{|');    
    for i=1:m+1
        fprintf('l|');
    end
    fprintf('}\\hline \n');
    
    fprintf('%d ',col_ip(1));
    for i=2:m+1
        fprintf('&%d ',col_ip(i));
    end
    fprintf('\\\\ \\hline \n');
    
    fprintf('\\end{tabular}$$ \n');
    
end

end