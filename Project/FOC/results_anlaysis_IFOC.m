time=n.Time;
% n=9.55*out.yout{2}.Values.Data;
% Torque_out=out.yout{3}.Values.Data;
% Is=out.yout{1}.Values.Data;
% Torque_ref=out.yout{4}.Values.Data;
% n_ref=out.yout{5}.Values.Data;
figure;
% Plot the real speed
plot(time, n.Data, 'b', 'LineWidth', 1);
hold on;
% Plot the reference speed
plot(time, n_ref.Data, 'r', 'LineWidth', 1);
xlabel('Time (s)');
ylabel('Speed (rpm)');
title('Real Speed vs Reference Speed');
legend('Real Speed', 'Reference Speed');
n_max=max(n.Data);
overshoot_n=(n_max-n_ref.Data(5,1))/n_ref.Data(5,1)
% Create a new figure
figure;
% Plot the output torque
plot(time, Torque_out.Data, 'b', 'LineWidth', 1);
hold on;
% Plot the reference torque
plot(time, Torque_ref.Data, 'r', 'LineWidth', 1);
hold off;
% Add labels and title
xlabel('Time (s)');
ylabel('Torque ($N\cdot m$)','Interpreter','latex');
title('Output Torque vs Reference Torque');
legend('Output Torque', 'Reference Torque');
%plot stator current
figure;
plot(Is.Stator_current_is_a__A_,'LineWidth',1);
hold on;
plot(Is.Stator_current_is_b__A_,'LineWidth',1);
hold on;
plot(Is.Stator_current_is_c__A_,'LineWidth',1);
hold off;

xlabel('Time (s)');
ylabel('Stator Current (A)');
title('Stator current');
legend('Phase A','Phase B','Phase C')