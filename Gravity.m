clear all
close all
clc

i = xlsread('D:\Mathlab R2020b\.xlsx'); %import your data excel 

column1 = i(:,1);
column2 = i(:,2);
max_x = max(column1);
min_x = nonzeros(column1);
min_x = min(min_x);

fourier = fft(column2);
amplitudo = abs(fourier);
length = length(amplitudo);
NA = amplitudo/length; %normalisasi amplitude
lognatural = log(NA);
fs = 1/(min_x + max_x);
f = [0:fs:fs*(max_x/min_x)]';
k = 2*pi*f;

r = [k lognatural];
export = [i r];
xlswrite('D:\Mathlab R2020b\Penyimpanan mathlab\Tugas_asistensi_2\line5fix.xlsx',export)