class Character < ActiveRecord::Base
    belongs_to :actor
    belongs_to :show
    def say_that_thing_you_say
        "#{self.name} always says: #{self.catchphrase}"
    end
    # def build_network(hash)
    #     Network.create(call_letters: hash[:call_letters])
    # end
end