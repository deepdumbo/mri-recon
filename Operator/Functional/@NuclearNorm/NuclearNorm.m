classdef NuclearNorm < Functional
    
    properties
        dim
    end
    
    methods
        function nuc = NuclearNorm(inputList, mu, dim)
            nuc = nuc@Functional(1, 0, 0, mu, inputList);
            nuc.dim = dim;
        end
    end
    
    methods(Access = protected)
        y = eval_(nuc, x, isCache)
        
        z = prox_(nuc, lambda, x)
        
        g = gradOp_(nuc, x)
        function updateProp_(op);end
    end
    
end