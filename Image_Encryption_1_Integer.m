%--------------------------------------------------------------
% Welcome to Getscriptall
%--------------------------------------------------------------
 %Encryption
%--------------------------------------------------------------
 
 
a=imread('lena.png');
figure;
imshow(a);title('Original/plain image');
R=a(:,:,1);
G=a(:,:,2);
B=a(:,:,3);

for i=1:256
    for j=1:256
        R1(i,j)=double(mod((double(R(i,j))+126),256));
        G1(i,j)=double(mod((double(G(i,j))+122),256));
        B1(i,j)=double(mod((double(B(i,j))+120),256));
    end
end

R1=uint8(R1);
G1=uint8(G1);
B1=uint8(B1);
cipher=cat(3,R1,G1,B1);
figure;
imshow(cipher);title(' Encrypted image');
%--------------------------------------------------------------
% Decryption
%--------------------------------------------------------------
for i=1:256
    for j=1:256
        R(i,j)=double(mod((double(R1(i,j))-126),256));
        G(i,j)=double(mod((double(G1(i,j))-122),256));
        B(i,j)=double(mod((double(B1(i,j))-120),256));
    end
end

R=uint8(R);
G=uint8(G);
B=uint8(B);
cipher=cat(3,R,G,B);
figure;
imshow(cipher);title(' Decrypted image');






%----------------------------------------------------
 %%%%%%%%%%%-------------------$$$$$$$$>>>>> BY Getscriptall <<<<$$$$$$$$$-----------------%%%%%%%%%%%%%% 
 % @@@ for any query contact: info.getscriptall@gmail.com