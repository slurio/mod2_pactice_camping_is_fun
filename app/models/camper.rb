class Camper < ApplicationRecord
    has_many :signups
    has_many :activities, through: :signups

    validates :name, uniqueness: true
    validates :age, numericality: {less_than_or_equal_to: 18}
    validates :age, numericality: {greater_than_or_equal_to: 8}
    
    def find_activity_time(activity)
        time = 0
        self.signups.select do |signup|
            if signup.activity == activity
                time = signup.time
            end
        end
        time
    end

    def find_signup(activity)
        self.signups.select do |signup|
            if signup.activity == activity
                @signup = signup
            end
        end
        @signup
    end
end
