% Parâmetros do sistema
kappa = 1.0;  % Constante de torção (N.m/rad)
I = 1.0;      % Momento de inércia (kg.m^2)
theta0 = 0.5; % Amplitude angular inicial (rad)
phi = 0;      % Fase inicial (rad)

% Frequência angular
omega = sqrt(kappa / I);

% Tempo de simulação
t = linspace(0, 20, 1000); % De 0 a 10 segundos com 1000 pontos

% Solução da equação diferencial
theta = theta0 * cos(omega * t + phi);

% Plotando o resultado
figure;
plot(t, theta, 'b', 'LineWidth', 2);
xlabel('Tempo (s)');
ylabel('\theta (rad)');
title('Dinâmica de um Pêndulo de Torção');
grid on;
