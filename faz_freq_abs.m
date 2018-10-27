function [f_a,vector]=faz_freq_abs(orig,alfabeto)
    [l,c]=size(orig);
    if(l==1)
        f_a= calcula_frequencia_abs(orig,alfabeto);  
        vector = orig;
    else
        new = zeros(l*c,1);
        k=0;
        for i=1:l
            for j=1:c
                new(k+j,1) = orig(i,j);
            end
            k = k+c;
        end
        vector = new;
        f_a = calcula_frequencia_abs(new,alfabeto);
    end