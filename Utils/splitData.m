function  [x_train,y_train,x_test,y_test,ps]=splitData(data,k,ratio)
    [m,n]=size(data);%data������
    %ratio=0.8;%����
    index_train=randperm(m,round(ratio*m));%��ԭʼ�����г�ȡ��ѵ�����ݵ��±�
    %k=1;%ѵ�����ݵ������ռ������
    x=data(:,1:(n-k));%�������������ݱ�׼��
    x=x';
    [x,ps] = mapminmax(x,-1,1);%��׼������ֵΪ0����׼��Ϊ1����̬�ֲ�
    x=x';
    x_train=x(index_train,:);%ѡȡѵ����������
    y_train=data(index_train,(n-k+1):n);%ѡȡѵ���������
    index_test=setdiff(1:m,index_train);%���Լ��б�
    x_test=x(index_test,:);%ѡȡ������Լ�
    y_test=data(index_test,(n-k+1):n);%ѡȡ������Լ�
end
