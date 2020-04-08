
%%
neg5AOA = [-121.3195801, -103.5896302, -118.8365937, -134.0835572, -156.364441, -153.5232543, -153.5705567, -145.2529905, -130.3070069, -65.15350345, -246.534729, -237.4725342, -214.1860961, -107.0930481, -164.8956298, -153.6376952];
zeroAOA = [-117.0867921, -144.7891237, -169.3435669, -193.8980102, -200.8178709, -183.1970215, -175.213623, -152.7313233, -129.7012329, -64.85061645, -143.5409547, -166.8991088, -161.9033813, -80.95169065, -144.4961548, -142.6086427];
fiveAOA = [-105.7479858, -189.9223328, -224.6257783, -259.3292237, -249.6597289, -210.6781006, -189.5385742, -164.2913818, -133.2855225, -66.64276125, -71.3943482, -111.6302491, -117.9672241, -58.98361205, -121.1257935, -123.7106322];
tenAOA = [-107.9086304, -254.7622682, -291.6412355, -328.5202028, -292.8573608, -235.8245848, -200.0457764, -164.337158, -134.7824097, -67.39120485, -28.237915, -73.5916137, -87.8143311, -43.90716555, -108.1848143, -116.6275024];
fivteenAOA = [-125.4455567, -272.2480775, -280.5828095, -288.9175416, -210.9207153, -186.8774412, -194.5114135, -199.7039795, -188.1881714, -94.0940857, -12.8890991, -57.8735351, -76.2527465, -38.12637325, -109.2071533, -123.9425658];
twentyAOA = [-112.9989622, -136.0153197, -150.3929138, -164.7705079, -176.8447876, -174.4689941, -183.9309693, -188.8549805, -178.6132812, -89.3066406, -15.5273438, -49.5986939, -63.5177612, -31.7588806, -92.2546386, -108.0871583];
twentyfiveAOA = [-102.3040771, -127.0202636, -142.4423218, -157.8643799, -168.0862426, -164.6224976, -171.9024657, -175.0869752, -164.7613527, -82.38067635, -4.7302245, -32.2250365, -45.6069947, -22.80349735, -75.7644655, -93.7713623];

AOA = pi/180*[-5 0 5 10 15 20 25]; % in radians

PlatformArea = 0.04723; % m^2
AirSpeed = 27; % m^2
AirRho = 1.225; % kg/m^3

Phi  = [0.9006 0.3688 0.1838 0.05831 -0.03975 -0.1037 -0.1503 -0.2111 0.7282 0.7282 0.08516 0.00835 -0.03805 -0.06709 -0.08428 -0.1027];
DeltaA = [0.002577 0.003374 0.004548 0.00561 0.006633 0.006633 0.006785 0.01107 0.002502 0.002994 0.003411 0.00474 0.006444 0.006595 0.00705 0.01251];
%%
function Fd = getFd(PressureVals,AOA,Phi,DeltaA)
    Fd = 0
    for i = 1:16
        Fd = Fd + PressureVals(i)*sin(AOA(i)-Phi(1))*DeltaA(i)
    end
end
%%
Fd = getFd(neg5AOA,AOA,Phi,DeltaA)
        





