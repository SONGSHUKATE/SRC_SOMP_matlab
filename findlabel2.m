function [indices_choose,indices_remain]=findlabel2(per,labels)
%input:
%     per:ÿ��ѡȡ�ı��� ,������0��1֮��ѡȡ
%     labels:��ǩ 
indices_choose=[];
indices_remain=[];
Class=max(labels);
for i=1:Class
    ind=find(labels==i);
    L=length(ind);
    p=randperm(L);
    num=round(L*per);
    indices_choose=[indices_choose,ind(p(1:num))];
    indices_remain=[indices_remain,ind(p(num+1:end))];
end