class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters
    def full_name
        self.first_name + " " + self.last_name
    end
    def list_roles
        roles = []
        self.shows.each do |show| 
            roles << "#{self.characters.find_by(show: show).name} - #{show.name}"
        end
        roles
    end
end