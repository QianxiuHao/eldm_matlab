function [ tar ] = pred_E( X,model)
%PRED_E �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��

% if strcmp(fun,'tanh')
%    g = @(x)tanh(x);
% elseif strcmp(fun,'sigmoid')
%    g = @(x)sigmoid(x);
% elseif strcmp(fun,'linear')
%    g = @(x)x;
% else 
%     error('the activation function could only be sigmoid,tanh or linear')
% end
X = [ones(size(X,1),1) X];
H = model.g(X*model.W1);
tar = H*model.beta;

end

