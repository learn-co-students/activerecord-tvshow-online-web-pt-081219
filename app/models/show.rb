class Show < ActiveRecord::Base
                       
	def self.highest_rating
		Show.maximum("rating") 
	end

	def self.most_popular_show
		Show.order(rating: "DESC").first
	end

	def self.lowest_rating
		Show.minimum("rating")
	end

	def self.least_popular_show
	  Show.order(rating: "ASC").first
	end

	def self.ratings_sum
	  Show.sum("rating")
	end

	def self.popular_shows
	  Show.where("rating > ?", 5)
	end

	def self.shows_by_alphabetical_order
		Show.order(:name)
	end

	def can_find_by_multiple_attributes
	  # Search Values:
	  # title == "Title"
	  # release_date == 2000
	  # director == "Me"
	  movie = Movie.find_by(title: "Title", release_date: 2000, director: "Me")
	end

	def can_find_using_where_clause_and_be_sorted
	  # For this test return all movies released after 2002 and ordered by 
	  # release date descending
	  movie = Movie.where("release_date > ?",2002).order(release_date: :desc)
	end

	def can_be_found_updated_and_saved
	  # Updtate the title "Awesome Flick" to "Even Awesomer Flick", save it, then return it
	  Movie.create(title: "Awesome Flick")
	  movie = Movie.find_by(title: "Awesome Flick")
	  movie.title = "Even Awesomer Flick"
	  movie.save
	  movie
	end

	def can_update_using_update_method
	  # Update movie title to "Wat, huh?"
	  Movie.create(title: "Wat?")
	  movie = Movie.find_by(title: "Wat?")
	  movie.update(title: "Wat, huh?")
	end

	def can_update_multiple_items_at_once
	  # Change title of all movies to "A Movie"
	  5.times do |i|
	    Movie.create(title: "Movie_#{i}", release_date: 2000+i)
	  end
	  Movie.update_all(title: "A Movie")
	end

	def can_destroy_a_single_item
	  Movie.create(title: "That One Where the Guy Kicks Another Guy Once")
	  movie = Movie.find_by(title: "That One Where the Guy Kicks Another Guy Once")
	  movie.delete 
	end

	def can_destroy_all_items_at_once
	  10.times do |i|
	    Movie.create(title: "Movie_#{i}")
	  end
	  Movie.delete_all
	end

	end