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
      if valid? && sender.balance >= @amount #rejects a transfer if the sender does not have enough funds
        sender.balance -= @amount
        receiver.balance += @amount#can execute a successful transaction between two accounts
        self.status = "complete"
      else
        puts "You don't have sufficient funds to transfer."
      end
    end


    def reverse_transfer

    end

  end
