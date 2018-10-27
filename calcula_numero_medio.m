function [med,v] = calcula_numero_medio(f_a)
    soma = sum (f_a);
    prob = double(f_a/soma);
    huff = hufflen(f_a);
    v = var(huff,f_a);
    med = prob'*huff;
end