function [f,alfa,vector,H] = le_musica(l,bits)
    d = 2^bits;
    alfa = -1:2/d:1;
    alfa = alfa(1:length(alfa)-1);
    [f,vector] = faz_freq_abs(l',alfa);
    H = calcula_entropia(f');
    alfa = alfa';