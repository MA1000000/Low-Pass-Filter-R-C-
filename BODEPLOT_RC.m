% Define the coefficients of the numerator and denominator
R = 2268; % Ohms
C = 5 * 10^-5; % farads 
gm = 0.00220551;
num = [gm * R];
den = [R * C, 1];

% Define the transfer function
sys1 = tf(num, den);

% Get the frequency response data
[mag, phase, freq] = bode(sys1);

% Convert magnitude to dB
magdB = 20 * log10(squeeze(mag));

% Convert phase to degrees
phase_deg = squeeze(phase);

% Plot the Bode plot (magnitude and phase)
figure;
subplot(2, 1, 1);
semilogx(freq, magdB);
grid on;
xlabel('Frequency (rad/s)');
ylabel('Magnitude (dB)');
title('Bode Plot (Magnitude) of Capacitor and Resistor in Parallel');

subplot(2, 1, 2);
semilogx(freq, phase_deg);
grid on;
xlabel('Frequency (rad/s)');
ylabel('Phase (degrees)');
title('Bode Plot (Phase) of Capacitor and Resistor in Parallel');