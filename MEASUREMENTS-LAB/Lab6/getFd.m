function Fd = getFd(PressureVals,Phi,DeltaA)
    Fd = 0;
    for i = 1:16
        Fd = Fd + PressureVals(i)*sin(PressureVals(17)-Phi(i))*DeltaA(i);
    end
end