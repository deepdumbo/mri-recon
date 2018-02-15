function z = prox_(ssd, lambda, x, y)

if ssd.inputList{1}.isConstant
    
    z = x + softThreshold(y - x, lambda);
    
else
    
    z = y + softThreshold(x - y, lambda);

end

end