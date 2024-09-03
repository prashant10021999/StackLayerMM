layerArray {1} = {'air ', 0, [0 0 0], 0, 1};
layerArray {2} = {'TiO2 ', 30, [0 90 0], 0, 0};
layerArray {3} = {'Si100 ', Inf , [0 0 0], 0, 1};

layerArray = {layerArray {1}, layerArray {1}, layerArray {1}}
M = mmBerreman ( layerArray , 600 ,  , 0 , 112 )