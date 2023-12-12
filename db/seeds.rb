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
Movie.destroy_all

User.create(first_name: "Lucie", last_name: "Plantier", username: "Lucie", email: "lucie_p@gmail.com", password: "123456")
# User.create(first_name: "Hongri", last_name: "Ma", username: "Hongri", email: "hongri_m@gmail.com", password: "123456")

the_departed = Movie.create(title: "The Departed", category: "Thriller", year: 2006, synopsis: "An undercover cop and a mole in the police attempt to identify each other while infiltrating an Irish gang in South Boston.", poster: "https://resizing.flixster.com/-XZAfHZM39UwaGJIFWKAE8fS0ak=/v3/t/assets/p162564_p_v8_ag.jpg", directors: "Martin Scorsese", actors: "Leonardo DiCaprio, Matt Damon, Jack Nicholson")
shutter_island = Movie.create(title: "Shutter Island", category: "Thriller", year: 2010, synopsis: "Teddy Daniels and Chuck Aule, two US marshals, are sent to an asylum on a remote island in order to investigate the disappearance of a patient, where Teddy uncovers a shocking truth about the place.", poster: "https://m.media-amazon.com/images/M/MV5BYzhiNDkyNzktNTZmYS00ZTBkLTk2MDAtM2U0YjU1MzgxZjgzXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg", directors: "Martin Scorsese", actors: "Leonardo DiCaprio, Emily Mortimer, Mark Ruffalo")
inception = Movie.create(title: "Inception", category: "Science-Fiction", year: 2010, synopsis: "A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a C.E.O., but his tragic past may doom the project and his team to disaster.", poster: "https://m.media-amazon.com/images/M/MV5BMjAxMzY3NjcxNF5BMl5BanBnXkFtZTcwNTI5OTM0Mw@@._V1_.jpg", directors: "Christopher Nolan", actors: "Leonardo DiCaprio, Joseph Gordon-Levitt, Elliot Page")
taxi_driver = Movie.create(title: "Taxi Driver", category: "Crime", year: 1976, synopsis: "A mentally unstable veteran works as a nighttime taxi driver in New York City, where the perceived decadence and sleaze fuels his urge for violent action.", poster: "https://s3.amazonaws.com/static.rogerebert.com/uploads/movie/movie_poster/taxi-driver-1976/large_7QgyUVIwo20tduM4yf43zjaGMbK.jpg", directors: "Martin Scorsese", actors: "Robert De Niro, Jodie Foster, Cybill Shepherd")
interstellar = Movie.create(title: "Interstellar", category: "Science-Fiction", year: 2014, synopsis: "When Earth becomes uninhabitable in the future, a farmer and ex-NASA pilot, Joseph Cooper, is tasked to pilot a spacecraft, along with a team of researchers, to find a new planet for humans.", poster: "https://m.media-amazon.com/images/I/91e4IzkgrKL._AC_UF1000,1000_QL80_.jpg", directors: "Christopher Nolan", actors: "Matthew McConaughey, Anne Hathaway, Jessica Chastain")
pulp_fiction = Movie.create(title: "Pulp Fiction", category: "Drama", year: 1994, synopsis: "The lives of two mob hitmen, a boxer, a gangster and his wife, and a pair of diner bandits intertwine in four tales of violence and redemption.", poster: "https://resizing.flixster.com/-XZAfHZM39UwaGJIFWKAE8fS0ak=/v3/t/assets/p15684_p_v13_an.jpg", directors: "Quentin Tarantino", actors: "John Travolta, Uma Thurman, Samuel L. Jackson")
get_out = Movie.create(title: "Get Out", category: "Horror", year: 2017, synopsis: "A young African-American visits his white girlfriend's parents for the weekend, where his simmering uneasiness about their reception of him eventually reaches a boiling point.", poster: "https://cdn.traileraddict.com/content/universal-pictures/get-out-2017-4.jpg", directors: "Jordan Peele", actors: "Daniel Kaluuya, Allison Williams, Bradley Whitford")
old_boy = Movie.create(title: "Old Boy", category: "Action", year: 2003, synopsis: "After being kidnapped and imprisoned for fifteen years, Oh Dae-Su is released, only to find that he must find his captor in five days.", poster: "https://www.themoviedb.org/t/p/original/idBaREsAGTjPZPrlAd1w8SVzUzd.jpg", directors: "Park Chan-wook", actors: "Choi Min-sikYoo, Ji-taeKang, Hye-jeong")
american_beauty = Movie.create(title: "American Beauty", category: "Drama", year: 1999, synopsis: "A sexually frustrated suburban father has a mid-life crisis after becoming infatuated with his daughter's best friend.", poster: "https://www.themoviedb.org/t/p/w1280/wby9315QzVKdW9BonAefg8jGTTb.jpg", directors: "Sam Mendes", actors: "Kevin Spacey, Annette Bening, Thora Birch")
oppenheimer = Movie.create(title: "Oppenheimer", category: "Drama", year: 2023, synopsis: "The story of American scientist, J. Robert Oppenheimer, and his role in the development of the atomic bomb.", poster: "https://www.themoviedb.org/t/p/w1280/8Gxv8gSFCU0XGDykEGv7zR1n2ua.jpg", directors: "Christopher Nolan", actors: "Cillian Murphy, Emily Blunt, Matt Damon")
the_dark_knight = Movie.create(title: "The Dark Knight", category: "Action", year: 2008, synopsis: "When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.", poster: "", directors: "Christopher Nolan", actors: "Christian Bale, Heath Ledger, Aaron Eckhart")
batman_begins = Movie.create(title: "Batman Begins", category: "Action", year: 2005, synopsis: "After witnessing his parents' death, Bruce learns the art of fighting to confront injustice. When he returns to Gotham as Batman, he must stop a secret society that intends to destroy the city.", poster: "https://www.themoviedb.org/t/p/w1280/4MpN4kIEqUjW8OPtOQJXlTdHiJV.jpg", directors: "Christopher Nolan", actors: "Christian Bale, Michael Caine, Ken Watanabe")
the_dark_knight_rises = Movie.create(title: "The Dark Knight Rises", category: "Action", year: 2012, synopsis: "Eight years after the Joker's reign of chaos, Batman is coerced out of exile with the assistance of the mysterious Selina Kyle in order to defend Gotham City from the vicious guerrilla terrorist Bane.", poster: "https://www.themoviedb.org/t/p/w1280/hr0L2aueqlP2BYUblTTjmtn0hw4.jpg", directors: "Christopher Nolan", actors: "Christian Bale, Tom Hardy, Anne Hathaway")
memento = Movie.create(title: "Memento", category: "Thriller", year: 2000, synopsis: "A man with short-term memory loss attempts to track down his wife's murderer.", poster: "https://www.themoviedb.org/t/p/w1280/yuNs09hvpHVU1cBTCAk9zxsL2oW.jpg", directors: "Christopher Nolan", actors: "Guy Pearce, Carrie-Anne Moss, Joe Pantoliano")
dunkirk = Movie.create(title: "Dunkirk", category: "Action", year: 2017, synopsis: "Allied soldiers from Belgium, the British Commonwealth and Empire, and France are surrounded by the German Army and evacuated during a fierce battle in World War II.", poster: "https://www.themoviedb.org/t/p/w1280/b4Oe15CGLL61Ped0RAS9JpqdmCt.jpg", directors: "Christopher Nolan", actors: "Fionn Whitehead, Barry Keoghan, Mark Rylance")
nope = Movie.create(title: "Nope", category: "Horror", year: 2022, synopsis: "The residents of a lonely gulch in inland California bear witness to an uncanny and chilling discovery.", poster: "https://www.themoviedb.org/t/p/w1280/AcKVlWaNVVVFQwro3nLXqPljcYA.jpg", directors: "Jordan Peele", actors: "Daniel Kaluuya, Keke Palmer, Brandon Perea")
a_space_odyssey = Movie.create(title: "2001: A Space Odyssey", category: "Sci-Fi", year: 1968, synopsis: "After uncovering a mysterious artifact buried beneath the Lunar surface, a spacecraft is sent to Jupiter to find its origins: a spacecraft manned by two men and the supercomputer HAL 9000.", poster: "https://www.themoviedb.org/t/p/w1280/ve72VxNqjGM69Uky4WTo2bK6rfq.jpg", directors: "Stanley Kubrick", actors: "Keir Dullea, Gary Lockwood, William Sylvester")
a_clockwork_orange = Movie.create(title: "A Clockwork Orange", category: "Sci-Fi", year: 1971, synopsis: "In the future, a sadistic gang leader is imprisoned and volunteers for a conduct-aversion experiment, but it doesn't go as planned.", poster: "https://www.themoviedb.org/t/p/w1280/4sHeTAp65WrSSuc05nRBKddhBxO.jpg", directors: "Stanley Kubrick", actors: "Malcolm McDowell, Patrick Magee, Michael Bates")
the_shinning = Movie.create(title: "The Shinning", category: "Horror", year: 1980, synopsis: "A family heads to an isolated hotel for the winter where a sinister presence influences the father into violence, while his psychic son sees horrific forebodings from both past and future.", poster: "https://www.themoviedb.org/t/p/w1280/xazWoLealQwEgqZ89MLZklLZD3k.jpg", directors: "Stanley Kubrick", actors: "Jack Nicholson, Shelley Duvall, Danny Lloyd")
eyes_wide_shut = Movie.create(title: "Eyes Wide Shut", category: "Thriller", year: 1999, synopsis: "A Manhattan doctor embarks on a bizarre, night-long odyssey after his wife's admission of unfulfilled longing.", poster: "https://www.themoviedb.org/t/p/w1280/knEIz1eNGl5MQDbrEAVWA7iRqF9.jpg", directors: "Stanley Kubrick", actors: "Tom Cruise, Nicole Kidman, Todd Field")
aliens = Movie.create(title: "Aliens", category: "Decades after surviving the Nostromo incident, Ellen Ripley is sent out to re-establish contact with a terraforming colony but finds herself battling the Alien Queen and her offspring.", year: 1986, synopsis: "", poster: "https://www.themoviedb.org/t/p/w1280/r1x5JGpyqZU8PYhbs4UcrO1Xb6x.jpg", directors: "James Cameron", actors: "Sigourney Weaver, Michael Biehn, Carrie Henn")
the_terminator = Movie.create(title: "The Terminator", category: "Action", year: 1984, synopsis: "", poster: "https://www.themoviedb.org/t/p/w1280/hzXSE66v6KthZ8nPoLZmsi2G05j.jpg", directors: "James Cameron", actors: "Arnold Schwarzenegger, Linda Hamilton, Michael Biehn")
avatar = Movie.create(title: "Avatar", category: "Action", year: 2009, synopsis: "A paraplegic Marine dispatched to the moon Pandora on a unique mission becomes torn between following his orders and protecting the world he feels is his home.", poster: "https://www.themoviedb.org/t/p/w1280/6EiRUJpuoeQPghrs3YNktfnqOVh.jpg", directors: "James Cameron", actors: "Sam Worthington, Zoe Saldana, Sigourney Weaver")
drive = Movie.create(title: "Drive", category: "", year: 2011, synopsis: "A mysterious Hollywood action film stuntman gets in trouble with gangsters when he tries to help his neighbor's husband rob a pawn shop while serving as his getaway driver.", poster: "https://www.themoviedb.org/t/p/w1280/602vevIURmpDfzbnv5Ubi6wIkQm.jpg", directors: "Nicolas Winding Refn", actors: "Ryan Gosling, Carey Mulligan, Bryan Cranston")
the_neon_demon = Movie.create(title: "The Neon Demon", category: "Horror", year: 2016, synopsis: "An aspiring model, Jesse, is new to Los Angeles. However, her beauty and youth, which generate intense fascination and jealousy within the fashion industry, may prove themselves sinister.", poster: "https://www.themoviedb.org/t/p/w1280/3rBo2AfWSlvsPmYFdJsNUMfkNIo.jpg", directors: "Nicolas Winding Refn", actors: "Elle Fanning, Christina Hendricks, Keanu Reeves")
the_handmaiden = Movie.create(title: "The Handmaiden", category: "Thriller", year: 2016, synopsis: "A woman is hired as a handmaiden to a Japanese heiress, but secretly she is involved in a plot to defraud her.", poster: "https://www.themoviedb.org/t/p/w1280/oZrLMir5kxqErMoLQTG9gP4NCyk.jpg", directors: "Park Chan-wook ", actors: "Kim Min-heeHa Jung-wooCho Jin-woong")
memories_of_murder = Movie.create(title: "Memories of Murder", category: "Crime", year: 2003, synopsis: "In a small Korean province in 1986, two detectives struggle with the case of multiple young women being found raped and murdered by an unknown culprit.", poster: "https://www.themoviedb.org/t/p/w1280/lp3Qzzq1zzy6ToJul9DGBBd8ua1.jpg", directors: "Bong Joon-ho", actors: "Song Kang-ho, Kim Sang-kyung, Roe-ha Kim")
the_host = Movie.create(title: "The Host", category: "Horror", year: 2006, synopsis: "A monster emerges from Seoul's Han River and begins attacking people. One victim's loving family does what it can to rescue her from its clutches.", poster: "https://www.themoviedb.org/t/p/w1280/dEDLY3KeghKFzks5nTDWdigVikr.jpg", directors: "Bong Joon-ho", actors: "Song Kang-ho, Byun Hee-Bong, Park Hae-il")
parasite = Movie.create(title: "Parasite", category: "Thriller", year: 2019, synopsis: "Greed and class discrimination threaten the newly formed symbiotic relationship between the wealthy Park family and the destitute Kim clan.", poster: "https://www.themoviedb.org/t/p/w1280/7IiTTgloJzvGI1TAYymCfbfl3vT.jpg", directors: "Bong Joon-ho", actors: "Song Kang-ho, Lee Sun-kyun, Cho Yeo-jeong")
poor_things = Movie.create(title: "Poor Things", category: "Drama", year: 2023, synopsis: "The incredible tale about the fantastical evolution of Bella Baxter, a young woman brought back to life by the brilliant and unorthodox scientist Dr. Godwin Baxter.", poster: "https://www.themoviedb.org/t/p/w1280/hplhTGTmKoz85Z9UBZ9kYOxtzm0.jpg", directors: "Yorgos Lanthimos", actors: "Emma Stone, Mark Ruffalo, Willem Dafoe")
dogtooth = Movie.create(title: "Dogtooth", category: "Thriller", year: 2009, synopsis: "A controlling, manipulative father locks his three adult offspring in a state of perpetual childhood by keeping them prisoner within the sprawling family compound.", poster: "https://www.themoviedb.org/t/p/w1280/7nLuUGlH12cegPfR84QX4xIIH9k.jpg", directors: "Yorgos Lanthimos", actors: "Christos Stergioglou, Michele Valley, Angeliki Papoulia")
the_lobster = Movie.create(title: "The Lobster", category: "Sci-Fi", year: 2015, synopsis: "In a dystopian near future, according to the laws of The City, single people are taken to The Hotel, where they are obliged to find a romantic partner in 45 days or they're transformed into beasts and sent off into The Woods.", poster: "https://www.themoviedb.org/t/p/w1280/7Y9ILV1unpW9mLpGcqyGQU72LUy.jpg", directors: "Yorgos Lanthimos", actors: "Colin Farrell, Rachel Weisz, Jessica Barden")
dune_two = Movie.create(title: "Dune: Part 2", category: "Action", year: 2024, synopsis: "Paul Atreides unites with Chani and the Fremen while seeking revenge against the conspirators who destroyed his family.", poster: "https://www.themoviedb.org/t/p/w1280/cBDoFHJVcZqAonkTyhN9sMEggi5.jpg", directors: "Denis Villeneuve", actors: "Florence Pugh, Timothée Chalamet, Rebecca Ferguson")
dune = Movie.create(title: "Dune", category: "Action", year: 2021, synopsis: "A noble family becomes embroiled in a war for control over the galaxy's most valuable asset while its heir becomes troubled by visions of a dark future.", poster: "https://www.themoviedb.org/t/p/w1280/d5NXSklXo0qyIYkgV94XAgMIckC.jpg", directors: "Denis Villeneuve", actors: "Timothée Chalamet, Rebecca Ferguson, Zendaya")
arrival = Movie.create(title: "Arrival", category: "Sci-Fi", year: 2016, synopsis: "A linguist works with the military to communicate with alien lifeforms after twelve mysterious spacecraft appear around the world.", poster: "https://www.themoviedb.org/t/p/w1280/x2FJsf1ElAgr63Y3PNPtJrcmpoe.jpg", directors: "Denis Villeneuve", actors: "Amy Adams, Jeremy Renner, Forest Whitaker")
incendies = Movie.create(title: "Incendies", category: "Drama", year: 2010, synopsis: "Twins journey to the Middle East to discover their family history and fulfill their mother's last wishes.", poster: "https://www.themoviedb.org/t/p/w1280/nI5uFizKmEzY1FryKjiy68lwtJI.jpg", directors: "Denis Villeneuve", actors: "Lubna Azabal, Mélissa Désormeaux-Poulin, Maxim Gaudette")
wonka = Movie.create(title: "Wonka", category: "Comedy", year: 2023, synopsis: "With dreams of opening a shop in a city renowned for its chocolate, a young and poor Willy Wonka discovers that the industry is run by a cartel of greedy chocolatiers.", poster: "https://www.themoviedb.org/t/p/w1280/qhb1qOilapbapxWQn9jtRCMwXJF.jpg", directors: "Paul King", actors: "Timothée Chalamet, Gustave Die, Murray McArthur")
all_of_us_strangers = Movie.create(title: "All of Us Strangers", category: "Drama", year: 2023, synopsis: "A screenwriter drawn back to his childhood home enters into a fledgling relationship with a mysterious neighbor as he then discovers his parents appear to be living just as they were on the day they died, 30 years before.", poster: "https://www.themoviedb.org/t/p/w1280/zShZtXl2sMMCEodueSJM3cENNR8.jpg", directors: "Andrew Haigh", actors: "Andrew Scott, Paul Mescal, Carter John Grout")
aquaman_and_the_lost_kingdom = Movie.create(title: "Aquaman and the Lost Kingdom", category: "Action", year: 2023, synopsis: "Aquaman balances his duties as king and as a member of the Justice League, all while planning a wedding. Black Manta is on the hunt for Atlantean tech to help rebuild his armor. Orm plots to escape his Atlantean prison.", poster: "https://www.themoviedb.org/t/p/w1280/8xV47NDrjdZDpkVcCFqkdHa3T0C.jpg", directors: "James Wan", actors: "Jason Momoa, Ben Affleck, Patrick Wilson")
furiosa = Movie.create(title: "Furiosa: A Mad Max Saga", category: "Action", year: 2024, synopsis: "The origin story of renegade warrior Furiosa before she teamed up with Mad Max in 'Fury Road'", poster: "https://www.themoviedb.org/t/p/w1280/35ISL6KqEeaGfG3xagzUqwa6ijZ.jpg", directors: "George Miller ", actors: "Anya Taylor-Joy, Chris Hemsworth, Tom Burke")
mad_max = Movie.create(title: "Mad Max: Fury Road", category: "Action", year: 2015, synopsis: "In a post-apocalyptic wasteland, a woman rebels against a tyrannical ruler in search for her homeland with the aid of a group of female prisoners, a psychotic worshiper and a drifter named Max.", poster: "https://www.themoviedb.org/t/p/w1280/8tZYtuWezp8JbcsvHYO0O46tFbo.jpg", directors: "George Miller", actors: "Tom Hardy, Charlize Theron, Nicholas Hoult")
the_creator = Movie.create(title: "The Creator", category: "Sci-Fi", year: 2023, synopsis: "Against the backdrop of a war between humans and robots with artificial intelligence, a former soldier finds the secret weapon, a robot in the form of a young child.", poster: "https://www.themoviedb.org/t/p/w1280/8tZYtuWezp8JbcsvHYO0O46tFbo.jpg", directors: "Gareth Edwards", actors: "John David Washington, Madeleine Yuna Voyles, Gemma Chan")
zombieland_two = Movie.create(title: "Zombieland: Double Tap", category: "Comedy", year: 2019, synopsis: "Columbus, Tallahassee, Wichita, and Little Rock move to the American heartland as they face off against evolved zombies, fellow survivors, and the growing pains of the snarky makeshift family.", poster: "https://www.themoviedb.org/t/p/w1280/dtRbVsUb5O12WWO54SRpiMtHKC0.jpg", directors: "Ruben Fleischer", actors: "Woody Harrelson, Jesse Eisenberg, Emma Stone")
zombieland = Movie.create(title: "Zombieland", category: "Comedy", year: 2009, synopsis: "A shy student trying to reach his family in Ohio, a gun-toting bruiser in search of the last Twinkie and a pair of sisters striving to get to an amusement park join forces in a trek across a zombie-filled America.", poster: "https://www.themoviedb.org/t/p/w1280/dUkAmAyPVqubSBNRjRqCgHggZcK.jpg", directors: "Ruben Fleischer", actors: "Jesse Eisenberg, Emma Stone, Woody Harrelson")
spiderman_into_spiderverse = Movie.create(title: "Spider-Man: Into the Spider-Verse", category: "Animation", year: 2018, synopsis: "Teen Miles Morales becomes the Spider-Man of his universe and must join with five spider-powered individuals from other dimensions to stop a threat for all realities.", poster: "https://www.themoviedb.org/t/p/w1280/3cZn1k8x0bikrDKEy9ZKJ6Vdj30.jpg", directors: "Bob Persichetti, Peter Ramsey, Rodney Rothman", actors: "Shameik Moore, Jake Johnson, Hailee Steinfeld")
spiderman_accross_spiderverse = Movie.create(title: "Spider-Man: Across the Spider-Verse", category: "Animation", year: 2023, synopsis: "Miles Morales catapults across the Multiverse, where he encounters a team of Spider-People charged with protecting its very existence. When the heroes clash on how to handle a new threat, Miles must redefine what it means to be a hero.", poster: "https://www.themoviedb.org/t/p/w1280/8Vt6mWEReuy4Of61Lnj5Xj704m8.jpg", directors: "Joaquim Dos Santos, Kemp Powers, Justin K. Thompson", actors: "Shameik Moore, Hailee Steinfeld, Brian Tyree Henry")
spiderman = Movie.create(title: "Spider-Man", category: "Action", year: 2002, synopsis: "After being bitten by a genetically-modified spider, a shy teenager gains spider-like abilities that he uses to fight injustice as a masked superhero and face a vengeful enemy.", poster: "https://www.themoviedb.org/t/p/w1280/gh4cZbhZxyTbgxQPxD0dOudNPTn.jpg", directors: "Sam Raimi", actors: "Tobey Maguire, Kirsten Dunst, Willem Dafoe")
barbie = Movie.create(title: "Barbie", category: "Comedy", year: 2023, synopsis: "Barbie suffers a crisis that leads her to question her world and her existence.", poster: "https://www.themoviedb.org/t/p/w1280/iuFNMS8U5cb6xfzi51Dbkovj7vM.jpg", directors: "Greta Gerwig", actors: "Margot Robbie, Ryan Gosling, Issa Rae")
anatomy_of_a_fall = Movie.create(title: "Anatomy of a Fall", category: "Thriller", year: 2023, synopsis: "A woman is suspected of her husband's murder, and their blind son faces a moral dilemma as the main witness.", poster: "https://www.themoviedb.org/t/p/w1280/kQs6keheMwCxJxrzV83VUwFtHkB.jpg", directors: "Justine Triet", actors: "Sandra Hüller, Swann Arlaud, Milo Machado Graner")
annette = Movie.create(title: "Annette", category: "Musical", year: 2021, synopsis: "A stand-up comedian and his opera singer wife have a two-year-old daughter with a surprising gift.", poster: "https://www.themoviedb.org/t/p/w1280/4FTnypxpGltJdIARrfFsP31pGTp.jpg", directors: "Leos Carax ", actors: "Adam Driver, Marion Cotillard, Simon Helberg")
woman_talking = Movie.create(title: "Women Talking", category: "Drama", year: 2022, synopsis: "Do nothing, stay and fight, or leave. In 2010, the women of an isolated religious community grapple with reconciling a brutal reality with their faith.", poster: "https://www.themoviedb.org/t/p/w1280/twUbb6Irktv0VEsJXQWJ3VKyxFX.jpg", directors: "Sarah Polley", actors: "Rooney Mara, Claire Foy, Jessie Buckley")
goddess_of_fireflies = Movie.create(title: "Goddess of the Fireflies", category: "Drama", year: 2020, synopsis: "A coming of age story set against the backdrop of a rural Québec town and grunge music's rise.", poster: "https://www.themoviedb.org/t/p/w1280/5HBRj2PjVG13y1TdZLs3mfaPnpD.jpg", directors: "Anaïs Barbeau-Lavalette", actors: "Kelly Depeault, Caroline Néron, Normand D'Amour")
portrait_of_a_lady_on_fire = Movie.create(title: "Portrait of a Lady on Fire", category: "Drama", year: 2019, synopsis: "On an isolated island in Brittany at the end of the eighteenth century, a female painter is obliged to paint a wedding portrait of a young woman.", poster: "https://www.themoviedb.org/t/p/w1280/2LquGwEhbg3soxSCs9VNyh5VJd9.jpg", directors: "Céline Sciamma", actors: "Noémie Merlant, Adèle Haenel, Luàna Bajrami")
a_brothers_love = Movie.create(title: "A Brother's Love", category: "Comedy", year: 2019, synopsis: "Sophia, an unemployed academic, is forced to change the way she thinks and lives her life when Karim, her beloved brother, falls in love.", poster: "https://www.themoviedb.org/t/p/w1280/dQG2LJWJ7GhUN3o4FP752y8D0gJ.jpg", directors: "Monia Chokri ", actors: "Anne-Élisabeth Bossé, Patrick Hivon, Evelyne Brochu")
my_neighbor_totoro = Movie.create(title: "My Neighbor Totoro", category: "Animation", year: 1988, synopsis: "When two girls move to the country to be near their ailing mother, they have adventures with the wondrous forest spirits who live nearby.", poster: "https://www.themoviedb.org/t/p/w1280/rtGDOeG9LzoerkDGZF9dnVeLppL.jpg", directors: "Hayao Miyazaki", actors: "Hitoshi Takagi, Noriko Hidaka, Chika Sakamoto")



first_save_item = SaveItem.create(user: User.first, history: false, marked: false, title: inception.title, year: inception.title, api_movie_id: inception.id, poster: inception.poster)
second_save_item = SaveItem.create(user: User.first, history: true, marked: false, title: the_departed.title, year: the_departed.year, api_movie_id: the_departed.id, poster: the_departed.poster)

Notification.create(notif_title: "#{first_save_item.title} - Programmed in Beaubien Cinema", content: "Inception is available", save_item: first_save_item, user: User.first)
Notification.create(notif_title: "#{second_save_item.title} - Programmed in Parc Cinema", content: "The Departed is available", save_item: second_save_item, user: User.first)
