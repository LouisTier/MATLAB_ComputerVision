clear all
close all

%Ces images sont différentes mais elles ont toutes le même histogramme
L = 20;

%%%%%%%%%%%%%%%%%%%%%
H = zeros(L,L);
H(L/4+1: L/2,:) = 85;
H(L/2+1: 3*L/4,:) = 170;
H(3*L/4+1:end,:) = 255;

figure, imshow(H, [])

%%%%%%%%%%%%%%%%%%%%%
I = zeros(L,L);

for i = 1:L
     for j =1:L
         if mod(i,2) == 0
             if mod(j,2) == 0
                 I(i,j) = 255;
             else 
                 I(i,j) = 170;
             end
         else
             if mod(j,2) == 1
                 I(i,j) = 85;
             end
         end         
     end 
end

figure, imshow(I, [])


%%%%%%%%%%%%%%%%%%%%%
J = zeros(L,L);
J(L/2+1:end, 1:L/2) = 85;
J(1:L/2, L/2+1:end) = 255;
J(L/2+1:end, L/2+1:end) = 170;

figure, imshow(J, [])

%%%%%%%%%%%%%%%%%%%%%
K = zeros(L,L);
 


for i = 1:4:L-3
        K(i+1,:) = 255;
        K(i+2,:) = 170;
        K(i+3,:) = 85;
end

figure, imshow(K, [])


[XI, YI] = imhist(uint8(I));
[XJ, YJ] = imhist(uint8(J));
[XK, YK] = imhist(uint8(K));
[XH, YH] = imhist(uint8(H));

figure, 
subplot(4,1,1), bar(XH)
subplot(4,1,2), bar(XI)
subplot(4,1,3), bar(XJ)
subplot(4,1,4), bar(XK)