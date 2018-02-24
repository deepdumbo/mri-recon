function parseParam(solver)

param = solver.parseParam_(solver.paramUser);
defaultParam = struct('maxIter', 30,...
                      'plotFun', [],...
                      'plotInterval', 1,...
                      'verbose', 1,...
                      'tol', 1e-3,...
                      'stopCriteria', 'COST_UPDATE');
solver.param = setDefaultField(defaultParam, param);            

end
