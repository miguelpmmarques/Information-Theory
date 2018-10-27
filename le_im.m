function [f,Imy,vector,H] = le_im(Im)
    Imx=uint8(Im);
    Imy=unique(Imx);
    Imz= 0:1:255;
    if(mod(size(Imx,2),2)~=0)
        Imx = Imx(:,1:size(Imx,2)-1);
    end
    [f,vector] = faz_freq_abs(Imx,Imz');
    H = calcula_entropia(f);
