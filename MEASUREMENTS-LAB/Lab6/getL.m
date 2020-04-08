function L = getL(PressureVals,Phi,DeltaA)
    L = 0;
    for i = 9:16
        L = L - PressureVals(i)*cos(PressureVals(17)-Phi(i))*DeltaA(i);
    end
    for i = 1:8
        L = L + PressureVals(i)*cos(PressureVals(17)-Phi(i))*DeltaA(i);
    end
end
