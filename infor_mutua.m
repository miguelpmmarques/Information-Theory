function mut = infor_mutua(query,target,alfabeto,step)
    janela=zeros(1,length(query));
    %Calcular a entropia do query, que e sempre a mesma
    f_a_query = faz_freq_abs(query,alfabeto);
    H_X=calcula_entropia(f_a_query');
    %calcular o numero de resultados, ou seja o numero de elementos de mut
    n_res= 1+floor((length(target)-length(query))/step);
    mut= zeros(n_res,1)';
    move = 1;
        for k=1:step:(length(target)-length(query)+1)
            %percorrer a janela e igualar os valores aos da target 
            janela(:)= target(k:length(query)-1+k);
            %calcular a entropia da janela que vai mudando de cada vez que mudamos a janela
            f_a_janela=histc(janela,unique(janela));
            H_Y=calcula_entropia(f_a_janela');
            %calcular a entropia da intersecao
            H_XY=calcula_entropia(query,janela);
            %colocar o resultado no vector
            mut(move)= H_X-(H_XY-H_Y);
            move = move +1;
        end
end