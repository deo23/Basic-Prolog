% Tariff rules
tariff(0, 1000, 0.08).
tariff(1001, 10000, 0.04).
tariff(10001, 20000, 0.02).
tariff(20001, _, 0.00).

% Calculate cost for a specific range
calculate_cost(Kms, Cost) :-
    tariff(Min, Max, Rate),
    Kms >= Min,
    (Max = -1 ; (Max \= -1, Kms =< Max)), % Check if Max is -1 or Kms is less than or equal to Max
    Cost is Kms * Rate.

% Calculate total cost based on tariff rules
total_cost(Kms, Cost) :-
    findall(PartialCost, calculate_cost(Kms, PartialCost), Costs),
    sum_list(Costs, Cost).

% Example usage:
% total_cost(500, Result).
% total_cost(5000, Result).
% total_cost(15000, Result).
% total_cost(25000, Result).
