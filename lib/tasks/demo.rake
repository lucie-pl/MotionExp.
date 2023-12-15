namespace :demo do
  desc "Create screening time"
  task screening: :environment do

    movie = Movie.find_by_title("Dune")
    cinema = Cinema.find_by_name("Cineplex Forum")
    ScreeningTime.create(date: "Friday, December 22", hour: "6:00PM", version: "English version", movie: movie, cinema: cinema)
  end

end
