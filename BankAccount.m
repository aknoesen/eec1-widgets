classdef BankAccount
% BankAccount  A simple value class tracking a bank account.
%
% A value class: every assignment creates an independent copy.
% Mutating methods (Deposit, Withdraw) must be called with reassignment:
%   account = account.Deposit(50);

    properties (SetAccess = immutable)
        name            % 1×1 string — account holder name; write-once in constructor
    end

    properties (Access = private)
        accountBalance  % 1×1 double — current balance in dollars
        customerSince   % 1×1 double — year account was opened
    end

    methods

        function obj = BankAccount(startingBalance, startingYear, name)
        % BankAccount  Construct a bank account.
        %
        % Inputs:
        %   startingBalance - 1×1 double  opening balance in dollars
        %   startingYear    - 1×1 double  year the account was opened
        %   name            - 1×1 string  account holder name
        %
        % Outputs:
        %   obj - 1×1 BankAccount  the new account object
            obj.accountBalance = startingBalance;
            obj.customerSince  = startingYear;
            obj.name           = name;
        end

        function obj = Deposit(obj, amount)
        % Deposit  Add amount to the balance and return the updated account.
        %
        % Inputs:
        %   obj    - 1×1 BankAccount  the account to deposit into
        %   amount - 1×1 double       amount to add in dollars
        %
        % Outputs:
        %   obj - 1×1 BankAccount  new account object with updated balance
            obj.accountBalance = obj.accountBalance + amount;
        end

        function obj = Withdraw(obj, amount)
        % Withdraw  Subtract amount from the balance and return the updated account.
        %
        % Inputs:
        %   obj    - 1×1 BankAccount  the account to withdraw from
        %   amount - 1×1 double       amount to subtract in dollars
        %
        % Outputs:
        %   obj - 1×1 BankAccount  new account object with updated balance
            obj.accountBalance = obj.accountBalance - amount;
        end

        function bal = CheckBalance(obj)
        % CheckBalance  Return the current balance.
        %
        % Inputs:
        %   obj - 1×1 BankAccount  the account to check
        %
        % Outputs:
        %   bal - 1×1 double  current balance in dollars
            bal = obj.accountBalance;
        end

        function obj = plus(objA, objB)
        % plus  Merge two accounts by combining their balances.
        %
        % Inputs:
        %   objA - 1×1 BankAccount  first account
        %   objB - 1×1 BankAccount  second account
        %
        % Outputs:
        %   obj - 1×1 BankAccount  new account with combined balance, earlier open year,
        %                          and both names joined by ", "
            newBalance   = objA.CheckBalance() + objB.CheckBalance();
            startingYear = min(objA.customerSince, objB.customerSince);
            custName     = objA.name + ", " + objB.name;
            obj          = BankAccount(newBalance, startingYear, custName);
        end

        % =====================================================================
        % ACTIVITY 1 — Add your Transfer method here
        % =====================================================================
        %
        % Signature:
        %   function [objA, objB] = Transfer(objA, objB, amount)
        %
        % Specification:
        %   Withdraw amount from objA and deposit it into objB.
        %   Return both updated account objects.
        %   Hint: use the existing Withdraw and Deposit methods above.
        %
        % =====================================================================

    end % methods

end % classdef
