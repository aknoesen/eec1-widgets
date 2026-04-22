% Write your name in here as a comment line
% Name:
% Paste your sensorDataAnalyzer class implementation below.
% You may use the template below to get started.

classdef sensorDataAnalyzer < handle
    %sensorDataAnalyzer class for deadmanning acceleration signals to
    %velocity and position signal
    %Initial values are always started at 0

    % Public properties (mutable)
    properties 
        TargetSignal; % Acceleration signal
        TargetSignalTs; % Signal time stamp
    end

    % Private properties (immutable)
    properties(Access=private)
        mobileDevConnection;
    end

    % Callable methods
    methods
        
        % Class constructor
        
        function obj = sensorDataAnalyzer()
           
            %Obj is the class constructor
            % Fill in this constructor method to initialize the
            % mobileDevConnection and assign it to the private
            % mobileDevConneciton attribute
            % Initializes the mobileDevConnection
            % Optional: Notify the user of a successful connection and the
            % name of the connected device
            
            end
        end
        
        % Data logger function
        
        function logSensorData(obj, timeSeconds, delaySeconds)
            
            % Fill in this method so that, when called, it logs sensor data
            % for "timeSeconds" after a delay of "delaySeconds"
            % It should notify the user of the delay time and when sensor
            % logging begins and ends.
            
        end

        % Set the target signal

        function setTargetSignal(obj, signalName)
            
            % Fill in this setTargetSignal method to do the following:
            % Extract the sensor data and time stamp from the mobile device
            % acceleration log
            % Use conditional logic to detect the desired TargetSignal names:
            % "X-Accel", "Y-Accel", "Z-Accel", "R-Accel"
            % Throw an error if none of these strings are passed
            % Throw an error if no data has been logged (logged acceleration in mobileDevConnection is empty)
        
        end
        
        % Plotting method of target signal
        function plotTargetSignal(obj)
            % Plot the target signal with the title string here
            % Throw an error if there is no TargetSignal to plot
        end
        
        function [signal, Ts] = getTargetSignal(obj)
            
            % Extract the traget signal and time stamp from the properties
            % and return it here.
        end

        % Integrator function
        function integrate(obj)
           % Implement your integration method here
           % Over-write the target signal with the integrated signal
        end

    end
end
    