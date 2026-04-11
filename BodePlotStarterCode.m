	% Bode Plot
	% RC Filter Bode Plot Generator
	% Parameters
	R = 1000;    % 1kOhm resistor
% =>	C = ...... % COMPLETE THIS LINE OF CODE  Calculate the capacitance for ~1kHz cutoff
	f = logspace(1, 5, 1000); % Frequency range from 10Hz to 100kHz
	w = 2*pi*f;  % Angular frequency
	
	% Low pass filter transfer function
	H_lp = 1./(1 + 1j*w*R*C); % 
	
	% High pass filter transfer function
% =>	H_hp = ........ % COMPLETE THIS LINE OF CODE
	
	% Magnitude in dB
	mag_lp_db = 20*log10(abs(H_lp));
	mag_hp_db = 20*log10(abs(H_hp));
	
	% Phase in degrees
	phase_lp = angle(H_lp)*180/pi;
	phase_hp = angle(H_hp)*180/pi;
	
	% Plotting
	figure(1);
	semilogx(f, mag_lp_db);
	title('Low Pass Filter - Magnitude Response');
	xlabel('Frequency (Hz)');
	ylabel('Magnitude (dB)');
	grid on;
	% Add a horizontal line at -3 dB
	hold on;
	semilogx([min(f), max(f)], [-3, -3], 'r--');
	hold off;
	
	figure(2);
	semilogx(f, phase_lp);
	title('Low Pass Filter - Phase Response');
	xlabel('Frequency (Hz)');
	ylabel('Phase (degrees)');
	grid on;
	
	figure(3);
%=>	% Complete the plotting for high pass filter
%=>	% [Add your code here]