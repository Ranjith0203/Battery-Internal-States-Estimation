close all
clc

figure(1)
plot(volt25)
ylabel('Terminal voltage(V)')
xlabel('time(s)')

figure(2)
plot(curr25)
ylabel('Current(A)')
xlabel('time(s)')
axis([0 35000 0 2.5])


figure(3)
plot(Ah25)
ylabel('Capacity (Ah)')
xlabel('time(s)')

% Capacity vs Ambient Temperature
Temp_LUT = [5 15 25 35 45];
Capacity = [2.2369 2.4474 2.5642 2.5693 2.5706];
figure(4)
plot(Temp_LUT,Capacity,'b:o')
xlabel('Temperature(\circ C)')
ylabel('Capacity(Ah)')
[curve, goodness]  = fit(Temp_LUT',Capacity', 'poly3') 
plot(curve)


% Terminal Voltage vs Time
figure(5)
plot(volt5,'r-.','LineWidth',1)
xlabel('Time(s)')
ylabel('Terminal voltage(V)')
hold on
plot(volt15,'m:','LineWidth',1)
xlabel('Time(s)')
ylabel('Terminal voltage(V)')
plot(volt25,'k-','LineWidth',2)
xlabel('Time(s)')
ylabel('Terminal voltage(V)')
plot(volt35,'b--','LineWidth',2)
xlabel('Time(s)')
ylabel('Terminal voltage(V)')
plot(volt45,'k:','LineWidth',1)
xlabel('Time(s)')
ylabel('Terminal voltage(V)')
legend('5\circC','15\circC','25\circC','35\circC','45\circC')


% Capacity vs Time
figure(6)
plot(Ah5,'r-.','LineWidth',1)
xlabel('Time(s)')
ylabel('Capacity')
hold on
plot(Ah15,'m:','LineWidth',1)
xlabel('Time(s)')
ylabel('Capacity')
plot(Ah25,'k-','LineWidth',2)
xlabel('Time(s)')
ylabel('Capacity')
plot(Ah35,'b--','LineWidth',2)
xlabel('Time(s)')
ylabel('Capacity')
plot(Ah45,'k:','LineWidth',1)
xlabel('Time(s)')
ylabel('Capacity')
legend('5\circC','15\circC','25\circC','35\circC','45\circC')


