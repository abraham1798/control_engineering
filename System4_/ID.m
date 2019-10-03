close all
t=zeros(); %arreglo de tiempo
k=zeros(); % arreglo de la ganancia
[fil,col]=size(Out); % declaro el arreglo para leer la posicion de los valores de la funcion
t=Out(:,1);%Datos del tiempo obtenidos de la tf G mediante simulink
k=Out(:,2);%Datos de la ganancia obtenidos de la tf G mediante simulik 
figure;
plot(t,k); %grafica de la tf

%identificar el #orden del sistema
pico=max(k);
final=k(end);
if   pico == final
    z = 1;
    
else 
    z = 2;
    
end
%implementacion una vez conocido el orden del sistema 
if z==1
        Orden=1
        for y=1:fil
            if Out(y,2) > final*0.9933  %Encontrar el valor de 5Tao
                pos=y             %Posicion del arreglo donde esta 5tao
                break
                
            else
            end
       
        end
       Tss=Out(pos,1);
       Tao=Tss/5;
      ktf=final;
      G1=tf(ktf,[Tao 1])
      figure;
      plot(t,k);
      hold on
      step(G1)
else
   Orden=2
   for y=1:fil
            if Out(y,2) == pico  
                tpa=y;            
                break
                
            else
            end
       
        end
    tp=Out(tpa,1);
    wd=pi/tp;
    mp=((pico-final)/final);
    delta=-(log(mp))/(sqrt(log(mp)^2 + pi^2));
    wn=wd/sqrt(1-delta^2);
    ks2=final;
    G2=tf((ks2*wn^2),[1 (2*delta*wn) (wn^2)])
    figure;
    plot(t,k);
    hold on
    step(G2)
end
    
