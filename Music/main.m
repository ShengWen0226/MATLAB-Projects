close all;
clear;
clc;
%% 產生音樂
% T(treble高音)
% A(alto中音)
% B(bass低音)
fs = 3000;
s1=0.2; %1/8拍
s2=0.4; %1/4拍
s3=0.8; %1/2拍
s4=1.6; %2拍
music = [T(1,s2),T(1,s2),A(5,s2),A(5,s2),A(6,s2),A(6,s2),A(5,s3)];
music = [music,A(3,s1),A(3,s1),A(5,s2),T(1,s2),A(6,s2),A(5,s4)];
music = [music,A(6,s3),A(5,s3),A(3,s2),A(6,s2),A(5,s3)];
music = [music,A(3,s3),A(5,s3),A(3,s2),A(2,s2),A(1,s3)];
music = [music,A(3,s2),A(3,s2),A(5,s2),A(5,s2),A(6,s2),A(6,s2),A(5,s2),A(5,s2)];
music = [music,T(2,s2),T(1,s2),A(6,s2),A(5,s2),A(6,s2),T(1,s2),A(5,s3)];
music = [music,A(6,s1),A(6,s1),A(5,s2),A(6,s2),T(1,s2),A(5,s4)];
music = [music,A(6,s1),A(6,s1),A(5,s2),A(6,s2),T(2,s2),T(1,s4)];
audiowrite('music.wav',music,fs);
sound(music,fs);
%% 繪圖
[x,Fs] = audioread('music.wav');
x = x(:,1);
x = x';
N = length(x);
t = (0:N-1)/Fs;
y = fft(x);
f = Fs/N*(0:round(N/2)-1);
figure(1);
subplot(3,1,1);
plot(t,x);
title('波形');
xlabel('Time (sec)');
ylabel('Amplitude');
grid;
subplot(3,1,2);
plot(f,abs(y(1:round(N/2))));
title('頻譜');
xlabel('Frequency (Hz)');
ylabel('Amplitude');
grid;
subplot(3,1,3);
win = 0.2*Fs;
Nfft = win;
spectrogram(x,win,0,Nfft,Fs,'yaxis');
title('Spectrogram');
axis xy,
xlabel('Time (sec)');
ylabel('Frequency (Hz)');
grid;