class Movie < ActiveRecord::Base
    def self.all_ratings #the possible values of movie ratings are really the responsibility of the Movie model
        %w(G PG PG-13 NC-17 R)
    end
end