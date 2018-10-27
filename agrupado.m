function [H,f_a] = agrupado(fonte,alfabeto)
    if (mod(length(fonte),2)==1)
        fonte = fonte(1:length(fonte)-1);
    end
    [a,b] = ndgrid(alfabeto);
    novo_alfabeto = [b(:),a(:)];
    [x,y] = size(novo_alfabeto);
    ocorre = zeros(1,x);
    agrup = reshape(fonte,2,[]);
    agrup = agrup';
    aux = zeros(1,y);
    for l=1:x
        aux = novo_alfabeto(l,:);
        logic = bsxfun(@eq, aux,agrup);
        soma = logic(:,1)+logic(:,2);
        ind = find(soma<2);
        soma(ind) = 0;
        ocorre(1,l) = sum(soma/2); 
    end
    inf = find(ocorre>0);
    f_a = ocorre(inf);
    H = calcula_entropia(f_a');
    H = H/2;