# your code goes here
class Person
    attr_accessor : bank_account
    attr_reader :name, :happiness, :hygiene #the attr accessor here is header bc :The person's name should not be able to change after initialization

    def initialize(name)
        @name = name
        @hygiene = 8
        @happiness = 8
        @bank_account = 25
    end
   
    def happines = (num)
        @happiness = if num > 10
            10
        elsif num < 0
            0
        else
            num
        end #sets the value of the person's happiness points. The maximum value allowed is 10, and the minimum value allowed is 0.
    end
    def hygiene = (num)
        @hygiene = if num > 10
            10
        elsif num < 0
            0
        else
            num
        end
        #sets the value of the person's hygiene points. The maximum value allowed is 10, and the minimum value allowed is 0.
    end

    def happy?
        self.happiness > 7
    end
    #returns true if the person's happiness is more than seven; otherwise, it returns false

    def clean?
        self.hygiene > 7
    end
    #returns true if the person's hygiene is more than seven; otherwise, it returns false

    def get_paid (amount)
        self.bank_account += amount
        "all about the benjamins"
    end
    #accepts a salary amount and adds this to the person's bank account. The method should return the string "all about the benjamins"

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    #increments the person's hygiene points by four and returns the string "♪ Rub-a-dub just relaxing in the tub ♫"

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        "♪ another one bites the dust ♫"
    end
    #increments the person's happiness by two points, decreases their hygiene by three points, and returns the Queen lyrics, "♪ another one bites the dust ♫"

    def call_friend(friend)
       self.happiness += 3
       friend.happiness += 3
       "Hi #{friend.name}! It's #{self.name}. How are you?" 
    end
    #accepts another instance of the Person class, or "friend". 
    # The method should increment the person and the friend's happiness points by three. It should also return a string. For example, if Stella calls her friend Felix, the method increment both Stella and Felix's happiness points and then return "Hi Felix! It's Stella. 
    # How are you?
    def start_coversation(friend, conversation_topic)
        case conversation_topic
        when "politics"
            [self, friend].each {|person| person.happines -= 2}
            "blah blah partisan blah lobbyist"
            #If the topic is politics, both people get sadder (their happiness decreases by 2) and the method returns "blah blah partisan blah lobbyist"
        when "weather"
            [self, friend].each {|person| person.happiness += 1}
            "blah blah sun blah rain"
            #If the topic is weather, both people get a little happier (their happiness increases by 1) and the method returns "blah blah sun blah rain"
        else 
            "blah blah blah blah blah"
        end
        #If the topic is not politics or weather, their happiness points don't change and the method returns "blah blah blah blah blah"
    end
end