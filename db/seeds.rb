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

User.create(first_name: "Lucie", last_name: "Plantier", username: "Lucie", email: "lucie_p@gmail.com", password: "123456")
# User.create(first_name: "Hongri", last_name: "Ma", username: "Hongri", email: "hongri_m@gmail.com", password: "123456")

dicaprio = Actor.create(first_name: "Leonardo", last_name: "DiCaprio")
matt_demon = Actor.create(first_name: "Matt", last_name: "Demon")
de_niro = Actor.create(first_name: "Robert", last_name: "De Niro")
mc_conaughey = Actor.create(first_name: "Matthew", last_name: "McConaughey")
anne_hathaway = Actor.create(first_name: "Anne", last_name: "Hathaway")
marion_cotillard = Actor.create(first_name: "Marion", last_name: "Cotillard")
jodie = Actor.create(first_name: "Jodie", last_name: "Foster")
travolta = Actor.create(first_name: "John", last_name: "Travolta")
thurman = Actor.create(first_name: "Uma", last_name: "Thurman")

scorsese = Director.create(first_name: "Martin", last_name: "Scorsese")
nolan = Director.create(first_name: "Christopher", last_name: "Nolan")
tarantino = Director.create(first_name: "Quentin", last_name: "Tarantino")

the_departed = Movie.create(title: "The Departed", category: "Thriller", year: 2006, synopsis: "An undercover cop and a mole in the police attempt to identify each other while infiltrating an Irish gang in South Boston.", poster: "https://resizing.flixster.com/-XZAfHZM39UwaGJIFWKAE8fS0ak=/v3/t/assets/p162564_p_v8_ag.jpg")
shutter_island = Movie.create(title: "Shutter Island", category: "Thriller", year: 2010, synopsis: "Teddy Daniels and Chuck Aule, two US marshals, are sent to an asylum on a remote island in order to investigate the disappearance of a patient, where Teddy uncovers a shocking truth about the place.", poster: "https://m.media-amazon.com/images/M/MV5BYzhiNDkyNzktNTZmYS00ZTBkLTk2MDAtM2U0YjU1MzgxZjgzXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg")
inception = Movie.create(title: "Inception", category: "Science-Fiction", year: 2010, synopsis: "A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a C.E.O., but his tragic past may doom the project and his team to disaster.", poster: "https://m.media-amazon.com/images/M/MV5BMjAxMzY3NjcxNF5BMl5BanBnXkFtZTcwNTI5OTM0Mw@@._V1_.jpg")
taxi_driver = Movie.create(title: "Taxi Driver", category: "Crime", year: 1976, synopsis: "A mentally unstable veteran works as a nighttime taxi driver in New York City, where the perceived decadence and sleaze fuels his urge for violent action.", poster: "https://s3.amazonaws.com/static.rogerebert.com/uploads/movie/movie_poster/taxi-driver-1976/large_7QgyUVIwo20tduM4yf43zjaGMbK.jpg")
interstellar = Movie.create(title: "Interstellar", category: "Science-Fiction", year: 2014, synopsis: "When Earth becomes uninhabitable in the future, a farmer and ex-NASA pilot, Joseph Cooper, is tasked to pilot a spacecraft, along with a team of researchers, to find a new planet for humans.", poster: "https://m.media-amazon.com/images/I/91e4IzkgrKL._AC_UF1000,1000_QL80_.jpg")
pulp_fiction = Movie.create(title: "Pulp Fiction", category: "Drama", year: 1994, synopsis: "The lives of two mob hitmen, a boxer, a gangster and his wife, and a pair of diner bandits intertwine in four tales of violence and redemption.", poster: "https://resizing.flixster.com/-XZAfHZM39UwaGJIFWKAE8fS0ak=/v3/t/assets/p15684_p_v13_an.jpg")

MovieDirector.create(movie: the_departed, director: scorsese)
MovieDirector.create(movie: shutter_island, director: scorsese)
MovieDirector.create(movie: inception, director: nolan)
MovieDirector.create(movie: taxi_driver, director: scorsese)
MovieDirector.create(movie: interstellar, director: nolan)
MovieDirector.create(movie: pulp_fiction, director: tarantino)

MovieActor.create(movie: the_departed, actor: dicaprio)
MovieActor.create(movie: the_departed, actor: matt_demon)
MovieActor.create(movie: shutter_island, actor: dicaprio)
MovieActor.create(movie: inception, actor: dicaprio)
MovieActor.create(movie: inception, actor: marion_cotillard)
MovieActor.create(movie: taxi_driver, actor: de_niro)
MovieActor.create(movie: taxi_driver, actor: jodie)
MovieActor.create(movie: interstellar, actor: mc_conaughey)
MovieActor.create(movie: interstellar, actor: anne_hathaway)
MovieActor.create(movie: pulp_fiction, actor: travolta)
MovieActor.create(movie: pulp_fiction, actor: thurman)

first_save_item = SaveItem.create(user: User.first, history: false, marked: false, title: inception.title, year: inception.title, api_movie_id: inception.id, poster: inception.poster)
second_save_item = SaveItem.create(user: User.first, history: true, marked: false, title: the_departed.title, year: the_departed.year, api_movie_id: the_departed.id, poster: the_departed.poster)

Notification.create(notif_title: "#{first_save_item.title} - Programmed in Beaubien Cinema", content: "Inception is available", save_item: first_save_item, user: User.first)
Notification.create(notif_title: "#{second_save_item.title} - Programmed in Parc Cinema", content: "The Departed is available", save_item: second_save_item, user: User.first)
