# your code goes here
class Person
    attr_accessor :hygiene, :happiness, :bank_account
    attr_reader :name
    
    def initialize(name)
        @name = name
        @happiness = 8
        @hygiene = 8
        @bank_account = 25
    end

    def bank_account
        @bank_account
    end

    def happiness
        if @happiness < 0
            @happiness = 0
        elsif @happiness > 10
            @happiness = 10
        else
            @happiness
        end
    end

    def hygiene
        if @hygiene < 0
            @hygiene = 0
        elsif @hygiene > 10
            @hygiene = 10
        else
            @hygiene
        end
    end

    def happy?
        @happiness > 7 ? true : false
    end

    def clean?
        @hygiene > 7 ? true : false
    end

    def get_paid(salary)
        @bank_account += salary
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        self.hygiene
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        self.happiness
        self.hygiene
        return '♪ another one bites the dust ♫'
    end

    def call_friend(person)
        self.happiness += 3
        person.happiness += 3
        self.happiness
        person.happiness
        return "Hi #{person.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == 'politics'
            person.happiness -= 2
            self.happiness -= 2
            person.happiness
            self.happiness
            return 'blah blah partisan blah lobbyist'
        elsif topic == 'weather'
            person.happiness += 1
            self.happiness += 1
            person.happiness
            self.happiness
            return 'blah blah sun blah rain'
        else
            return 'blah blah blah blah blah'
        end
    end
end