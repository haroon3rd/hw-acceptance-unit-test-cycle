class Movie < ActiveRecord::Base
    def self.similar_movies(title)
        director = Movie.find_by_title(title).director
        return nil if director.empty? or director.nil?
        Movie.where(director: director).pluck(:title)
    end
end
