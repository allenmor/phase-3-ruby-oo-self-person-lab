# your code goes here

require 'pry'
class Person
    

    attr_accessor :bank_account, :happiness, :hygiene
    attr_reader :name

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def bank_account=(value)
        @bank_account = value
    end

    def happiness=(value)
        @happiness = value.clamp(0, 10)
    end

    def hygiene=(value)

        @hygiene = value.clamp(0, 10)
    end

    def happy?
       @happiness > 7 ? true : false
    end
    def clean?
       @hygiene > 7 ? true : false
    end

    def get_paid=(amount)
        self.bank_account += amount
        "all about the benjamins"
    end

    binding.pry
end