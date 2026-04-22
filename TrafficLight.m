classdef TrafficLight < handle
% TrafficLight - Models a 3-state traffic light (Red → Green → Yellow → Red).

    properties (Access = private)
        states = ["Red", "Green", "Yellow"];
        currState = 1;
    end

    methods
        function obj = TrafficLight()
        % Construct a TrafficLight initialized to Red.
            obj.currState = 1;
        end

        function state = GetState(obj)
        % Return the current state as a string ("Red", "Green", or "Yellow").
            state = obj.states(obj.currState);
        end

        function Advance(obj)
        % Advance to the next state: Red → Green → Yellow → Red.
            obj.currState = mod(obj.currState, 3) + 1;
        end
    end
end
