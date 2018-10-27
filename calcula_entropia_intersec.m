function H = calcula_entropia_intersec(query,janela)
    dados = bitsll(query,16)+janela;
    [f_a,waste] = histc(dados,unique(dados));
    H = calcula_entropia(f_a');
end