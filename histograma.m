function histograma(a,alfabeto)
    figure(1);
    fa=faz_freq_abs(a,alfabeto);
    histogram(fa,alfabeto);   