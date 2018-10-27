function infor_max_mut = simulador(query,alfa_g,vec_songs)
    step= floor(length(query)/4);
    infor_max_mut=zeros(1,length(vec_songs));
    figure('name','Simulador','NumberTitle','off');
    for i=1:length(vec_songs)
        aux = sprintf('Song0%d.wav',i);
        infor_mut = infor_mutua(query,cell2mat(vec_songs(i)),alfa_g,step);
        subplot(length(vec_songs),1,i);
        plot(1:length(infor_mut),infor_mut);
        title(aux);
        infor_max_mut(i)= max(infor_mut);
    end
    original = infor_max_mut;
    infor_max_mut = sort(infor_max_mut,'descend');
    for i= 1:length(infor_max_mut)
        ind = find(original == infor_max_mut(1,i),1);
        fprintf("Song0%d.wav -> %.4f\n",ind(1,1),infor_max_mut(1,i));
    end
end