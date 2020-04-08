using Plots

h = [0 , 2 , 3,4,5,6,7,8,9,10,11,12]
Vout = [7.59, 8.72, 9.24, 9.68, 10.17, 10.67, 11.12 , 11.6 , 12.17 , 12.64 , 13.16 , 13.65]

plot(h,Vout)


# P_Theoretical = depends on height
# We need this pressure to be in psi
rho = 1.9375 #slug/ft^3
g = 32.174 #ft/s/s
P_Theoretical = rho*g*h #slug*in/ft/ft/s/s
# lbf = slug*ft/s/s
#new unit is lbf*in/ft/ft/ft
P_Theoretical = P_Theoretical/12/12/12 #psi



# Now we need P_Experimental
Sensitivity = 15 #mV/psi
Zero_Offset = 7.59 #mV
P_Experimental = (Vout .- Zero_Offset)/Sensitivity


plot(h,P_Theoretical,color = :green)
    plot!(h,P_Experimental)

f = 120 # cycles/s
f = f*60  #cycles/min = rev/min = RPM
.
