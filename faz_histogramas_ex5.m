function faz_histogramas_ex5(f_at,f_ah,f_ahB,f_ak,f_ag)
    figure('name','Distribuição Estatística das fontes dadas Angrupadas','NumberTitle','off');
    subplot(3,2,1);
    bar(f_ak);
    title('kid.bmp');
    subplot(3,2,2);
    bar(f_ah);
    title('homer.bmp');
    subplot(3,2,3);
    bar(f_ahB);
    title('homerBin.bmp');
    subplot(3,2,4);
    bar(f_ag);
    title('guitarSolo.wav');
    subplot(3,2,5);
    bar(f_at);
    title('english.txt');