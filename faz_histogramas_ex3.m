function faz_histogramas_ex3(kid,homer,homerBin,l,espacamento,ab,alfa_t)
    figure('name','Distribuição Estatística das fontes dadas','NumberTitle','off');
    subplot(3,2,1);
    Imz= 0:1:260;
    histogram(kid,Imz);
    title('kid.bmp');
    subplot(3,2,2);
    histogram(homer,Imz);
    title('homer.bmp');
    subplot(3,2,3);
    histogram(homerBin,Imz);
    title('homerBin.bmp');
    subplot(3,2,4);
    histogram(l,espacamento);
    title('guitarSolo.wav');
    subplot(3,2,5);
    histogram(ab,alfa_t);
    title('english.txt');