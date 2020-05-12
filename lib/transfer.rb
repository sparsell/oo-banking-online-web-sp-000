require 'pry'
  class Transfer
    attr_accessor :sender, :receiver, :amount, :status

    def initialize (sender, receiver, amount)
      @sender = sender
      @receiver = receiver
      @amount = amount
      @status = "pending"

    end

    def valid?
      sender.valid? && receiver.valid?
    end

    def execute_transaction
      if sender.bank_balance >= @amount #rejects a transfer if the sender does not have enough funds
        BankAccount.sender.balance - @amount && BankAccount.receiver.balance + @amount#can execute a successful transaction between two accounts
      else
      end
    end


    def reverse_transfer

    end

  end
