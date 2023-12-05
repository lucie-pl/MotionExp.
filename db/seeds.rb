# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

SaveItem.destroy_all
User.destroy_all

User.create(first_name: "Lorry", last_name: "Brossard", username: "Lorry", email: "lorry_b@gmail.com", password:"123456")

SaveItem.create(user: User.first, title: "Inception", year: 2010, api_movie_id: 1, poster: "https://m.media-amazon.com/images/M/MV5BMjAxMzY3NjcxNF5BMl5BanBnXkFtZTcwNTI5OTM0Mw@@._V1_.jpg")
SaveItem.create(user: User.first, title: "Interstellar", year: 2014, api_movie_id: 2, poster: "https://m.media-amazon.com/images/M/MV5BZjdkOTU3MDktN2IxOS00OGEyLWFmMjktY2FiMmZkNWIyODZiXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg")
