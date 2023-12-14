namespace :demo do
  desc "Create screening time"
  task screening: :environment do

    movie = Movie.find_by_title("Spider-Man: Across the Spider-Verse")
    cinema = Cinema.find_by_name("Cineplex Forum")
    ScreeningTime.create(date: "Monday, December 18", hour: "6:PM", version: "English version", movie: movie, cinema: cinema)
  end

end
