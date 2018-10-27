function H = calcula_entropia(dado1,dado2)
    if nargin==1
        l= sum(dado1);
        freq_rel=dado1/l;
        aux = log2(1./freq_rel);
        ind  = aux == inf;
        aux(ind) = 0;
        H = freq_rel'*aux;
    elseif nargin==2
        H = calcula_entropia_intersec(dado1,dado2);
    end
            
end

        
            
              
                