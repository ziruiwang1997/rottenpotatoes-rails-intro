class Movie < ActiveRecord::Base
    def self.all_ratings #the possible values of movie ratings are really the responsibility of the Movie model
        self.uniq.pluck(:rating).sort
    end
end