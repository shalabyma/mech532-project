function [outFlight] = calcFlight(plane,climb_states)
%calcFlight simulates the flight with a given climb states and steady
%flight distance.

%% Take off
flight.takeoff = Takeoff(plane,climb_states(1));

%% Climb
flight.climb = Climb(plane, climb_states, plane.test.maxAltitude);

%% 180 deg Banked Turn
radius = 150;
v = 20;
flight.banked_turn = BankedTurn(plane,radius,v);

%% Steady Flight
deltaQ_SF = plane.batt.totalQ - plane.batt.safetyQ - flight.takeoff.deltaQ - flight.climb.deltaQ - flight.banked_turn.deltaQ ;
flight.steady_flight = SteadyFlight(plane,deltaQ_SF);

%% Descent
v = 20;
flight.descent = Descent(plane, v, plane.test.maxAltitude);

%% flight metrics
flight.time = flight.climb.time + flight.banked_turn.time + flight.steady_flight.time + flight.descent.time;
flight.distance = flight.climb.distance + flight.banked_turn.distance + flight.steady_flight.distance + flight.descent.distance;

%% Output
outFlight = flight; 
end

