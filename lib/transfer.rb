require 'pry'
  class Transfer
    attr_accessor :sender, :receiver, :amount, :status, :balance

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
      if valid? && sender.bank_balance >= @amount #rejects a transfer if the sender does not have enough funds
        sender.bank_balance -= @amount
        receiver.bank_balance += @amount#can execute a successful transaction between two accounts
      else
        puts "You don't have sufficient funds to transfer."
      end
    end


    def reverse_transfer

    end

  end
