% BGSA code v1.0.
% Generated by Esmat Rashedi, 2010. 
% "	E. Rashedi, H. Nezamabadi-pour and S. Saryazdi,
%� 'BGSA: Binary Gravitational Search Algorithm', Natural Computation, vol.9, pp.727- 745, 2010."
%
%This function calculates the mass of each agent. 
function [M]=massCalculation(fit,min_flag);

Fmax=max(fit); Fmin=min(fit); Fmean=mean(fit); 
[i N]=size(fit);

if Fmax==Fmin
   M=ones(N,1);
else
    
   if min_flag==1 
      best=Fmin;worst=Fmax; % minimization
   else 
      best=Fmax;worst=Fmin; % maximization
   end
  
   M=(fit-worst)./(best-worst); %eq.9,

end

M=M./sum(M); %eq. 10.