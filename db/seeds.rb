# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Seed the RottenPotatoes DB with some movies.
more_movies = [
  {:title => 'Avengers', :rating => 'PG-13',
    :release_date => '4-May-2012'},
  {:title => 'The Dark Knight', :rating => 'PG-13',
    :release_date => '18-July-2008'},
  {:title => 'Interstellar', :rating => 'PG-13',
    :release_date => '26-Oct-2014'},
  {:title => 'Oppenheimer', :rating => 'R',
    :release_date => '21-July-2023'},
  {:title => 'Top Gun: Maverick', :rating => 'PG-13',
    :release_date => '27-May-2022'}
]

more_movies.each do |movie|
  Movie.create!(movie)
end
