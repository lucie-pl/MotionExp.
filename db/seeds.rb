# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Notification.destroy_all
SaveItem.destroy_all
User.destroy_all
MovieDirector.destroy_all
MovieActor.destroy_all
Actor.destroy_all
Director.destroy_all
Movie.destroy_all

User.create(first_name: "Lorry", last_name: "Brossard", username: "Lorry", email: "lorry_b@gmail.com", password: "123456")
User.create(first_name: "Hongri", last_name: "Ma", username: "Hongri", email: "hongri_m@gmail.com", password: "123456")

Actor.create(first_name: "Leonardo", last_name: "DiCaprio")
Actor.create(first_name: "Matt", last_name: "Demon")
Actor.create(first_name: "Robert", last_name: "De Niro")
Actor.create(first_name: "Matthew", last_name: "McConaughey")
Actor.create(first_name: "Anne", last_name: "Hathaway")
Actor.create(first_name: "Marion", last_name: "Cotillard")
Actor.create(first_name: "Jodie", last_name: "Foster")

Director.create(first_name: "Martin", last_name: "Scorsese")
Director.create(first_name: "Christopher", last_name: "Nolan")

Movie.create(title: "The Departed", category: "Thriller", year: 2006, synopsis: "An undercover cop and a mole in the police attempt to identify each other while infiltrating an Irish gang in South Boston.", poster: "https://resizing.flixster.com/-XZAfHZM39UwaGJIFWKAE8fS0ak=/v3/t/assets/p162564_p_v8_ag.jpg")
Movie.create(title: "Shutter Island", category: "Thriller", year: 2010, synopsis: "Teddy Daniels and Chuck Aule, two US marshals, are sent to an asylum on a remote island in order to investigate the disappearance of a patient, where Teddy uncovers a shocking truth about the place.", poster: "https://m.media-amazon.com/images/M/MV5BYzhiNDkyNzktNTZmYS00ZTBkLTk2MDAtM2U0YjU1MzgxZjgzXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg")
Movie.create(title: "Inception", category: "Science-Fiction", year: 2010, synopsis: "A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a C.E.O., but his tragic past may doom the project and his team to disaster.", poster: "https://m.media-amazon.com/images/M/MV5BMjAxMzY3NjcxNF5BMl5BanBnXkFtZTcwNTI5OTM0Mw@@._V1_.jpg")
Movie.create(title: "Taxi Driver", category: "Crime", year: 1976, synopsis: "A mentally unstable veteran works as a nighttime taxi driver in New York City, where the perceived decadence and sleaze fuels his urge for violent action.", poster: "https://s3.amazonaws.com/static.rogerebert.com/uploads/movie/movie_poster/taxi-driver-1976/large_7QgyUVIwo20tduM4yf43zjaGMbK.jpg")
Movie.create(title: "Interstellar", category: "Science-Fiction", year: 2014, synopsis: "When Earth becomes uninhabitable in the future, a farmer and ex-NASA pilot, Joseph Cooper, is tasked to pilot a spacecraft, along with a team of researchers, to find a new planet for humans.", poster: "https://m.media-amazon.com/images/I/91e4IzkgrKL._AC_UF1000,1000_QL80_.jpg")

MovieDirector.create(movie: Movie.first, director: Director.first)
MovieDirector.create(movie: Movie.second, director: Director.first)
MovieDirector.create(movie: Movie.third, director: Director.first)
MovieDirector.create(movie: Movie.fourth, director: Director.first)
MovieDirector.create(movie: Movie.fifth, director: Director.second)

MovieActor.create(movie: Movie.first, actor: Actor.first)
MovieActor.create(movie: Movie.first, actor: Actor.second)
MovieActor.create(movie: Movie.second, actor: Actor.first)
MovieActor.create(movie: Movie.third, actor: Actor.first)
MovieActor.create(movie: Movie.fourth, actor: Actor.third)
MovieActor.create(movie: Movie.fifth, actor: Actor.fourth)
MovieActor.create(movie: Movie.fifth, actor: Actor.fifth)

SaveItem.create(user: User.first, history: false, marked: false, title: Movie.third.title, year: Movie.third.title, api_movie_id: Movie.third.id, poster: Movie.third.poster)
SaveItem.create(user: User.first, history: true, marked: false, title: Movie.second.title, year: Movie.second.year, api_movie_id: Movie.second.id, poster: Movie.second.poster)
SaveItem.create(user: User.first, history: true, marked: false, title: Movie.first.title, year: Movie.first.year, api_movie_id: Movie.first.id, poster: Movie.first.poster)

Notification.create(notif_title: "#{SaveItem.first.title} - Programmed in Beaubien Cinema", content: "Inception is available", save_item: SaveItem.first, user: User.first)
Notification.create(notif_title: "#{SaveItem.second.title} - Programmed in Parc Cinema", content: "The Departed is available", save_item: SaveItem.second, user: User.first)
