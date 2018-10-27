function f_a =  calcula_frequencia_abs(a,alfabeto)

    f_a=zeros(size(alfabeto));
        for n=1:length(alfabeto)
            for m=1:length(a)
                if (alfabeto(n)==a(m))
                    f_a(n)=f_a(n)+1;
                end
            end
        end