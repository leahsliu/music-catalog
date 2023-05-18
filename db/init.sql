--albums--
CREATE TABLE "albums" (
  "id" INTEGER NOT NULL UNIQUE,
  "album_name" TEXT UNIQUE NOT NULL,
  "artist_name" TEXT NOT NULL,
  "rating" INTEGER NOT NULL,
  "price" FLOAT NOT NULL,
  "description" TEXT NOT NULL,
  "desc_src" TEXT NOT NULL,
  PRIMARY KEY("id" AUTOINCREMENT)
);

INSERT INTO
  "albums" (
    "album_name",
    "artist_name",
    "rating",
    "price",
    "description",
    "desc_src"
  )
VALUES
  (
    "Songs About Jane",
    "Maroon 5",
    4,
    29.99,
    "Songs About Jane is the debut studio album from Maroon 5. The album became a sleeper hit with the help of five singles that attained chart success: 'Harder to Breathe', 'This Love' and 'She Will Be Loved'. At the end of 2004, the album reached the top 10 of the US Billboard 200 chart and sold nearly 2.7 million copies by August 2015. It has sold over 10 million copies worldwide.",
    "https://towerrecords.com/products/maroon-5-songs-about-jane?variant=32070242500679"
  );

INSERT INTO
  "albums" (
    "album_name",
    "artist_name",
    "rating",
    "price",
    "description",
    "desc_src"
  )
VALUES
  (
    "Aerosmith: Aerosmith",
    "Aerosmith",
    5,
    13.94,
    "This two-disc collection gathers the best of Aerosmith and includes songs like 'Mama Kin,' 'Dream On,' 'Sweet Emotion,' 'Walk This Way' and more.",
    "https://towerrecords.com/products/aerosmith-aerosmith-4?variant=32432959324231"
  );

INSERT INTO
  "albums" (
    "album_name",
    "artist_name",
    "rating",
    "price",
    "description",
    "desc_src"
  )
VALUES
  (
    "Back To Black",
    "Amy Winehouse",
    5,
    33.11,
    "Limited picture disc vinyl LP pressing. Back to Black is the second and final studio album by Amy Winehouse, originally released in 2006. Influenced by the pop and soul music of 1960s girl groups, Winehouse collaborated with producers Salaam Remi and Mark Ronson, along with Sharon Jones' band The Dap-Kings, to assist her on capturing the sounds from that time period while blending them with contemporary R&B and neo-soul music. Between 2005 and 2006, she recorded the album's songs with Remi at Instrumental Zoo Studios in Miami and then with Ronson and the Dap-Kings at Chung King Studios and Daptone Records in New York.",
    "https://en.wikipedia.org/wiki/Back_to_Black"
  );

INSERT INTO
  "albums" (
    "album_name",
    "artist_name",
    "rating",
    "price",
    "description",
    "desc_src"
  )
VALUES
  (
    "A/B",
    "Kaleo",
    3,
    12.86,
    "2016 release. Firmly a phenomenon in their home country of Iceland, the four-piece band Kaleo is set to descend upon foreign shores in 2015, bringing their gorgeous blend of folk, blues, country, and rock to a wider mainstream audience in America. Their isolated heritage inspires a unique take on familiar sonic elements, resulting in diversity and freedom on each and every breathtaking track. The band signed to Iceland's largest record label, Sena, in the fall of 2013 and recorded their full-length debut, Kaleo, in just six short weeks. Five singles would reach #1 and the album would go Gold, receiving high praise and sending the band to shows and festivals in Europe over the next year.",
    "https://towerrecords.com/products/kaleo-a-b-1?variant=32419707453511"
  );

INSERT INTO
  "albums" (
    "album_name",
    "artist_name",
    "rating",
    "price",
    "description",
    "desc_src"
  )
VALUES
  (
    "Purpose",
    "Justin Bieber",
    4,
    18.39,
    "Deluxe edition includes bonus tracks. 2015 release, the fourth studio album from the Canadian-born pop artist and the long-awaited follow-up to Believe (2012). Purpose includes the singles 'What Do You Mean?' and 'Sorry', which was produced by Skrillex with the collaboration of DJ and producer Blood Pop. The album also includes collaborations with Ed Sheeran, Big Sean, Travis Scott, Jack U, Diplo and others. 'Overall, I'm just happy with the place I'm at creatively.' Justin says. 'I feel like this is probably the best I've been. There's not really a direction. It's like, uplifting music that people can dance to... it's a little different, it's really uplifting and people are going to smile when they listen to it.",
    "https://towerrecords.com/products/justin-bieber-purpose-1?variant=32464620945479"
  );

INSERT INTO
  "albums" (
    "album_name",
    "artist_name",
    "rating",
    "price",
    "description",
    "desc_src"
  )
VALUES
  (
    "Graduation",
    "Kanye West",
    5,
    11.03,
    "Graduation is the third studio album by American rapper and producer Kanye West, released on September 11, 2007, through Def Jam Recordings and Roc-A-Fella Records.",
    "https://en.wikipedia.org/wiki/Graduation_(album)"
  );

INSERT INTO
  "albums" (
    "album_name",
    "artist_name",
    "rating",
    "price",
    "description",
    "desc_src"
  )
VALUES
  (
    "Men Amongst Mountains",
    "The Revivalists",
    4,
    30.35,
    "Double vinyl LP pressing. 2015 release from indie outfit. Men Amongst Mountains is an album about growth. It is appropriate, then, that the band set out to challenge itself while writing and recording the album. The Revivalists cloistered themselves within the intimate confines of Bogalusa, LA's Studio in the Country (finishing touches were added closer to home at New Orleans' Esplanade and Living Room Studios) for nearly two weeks while recording Men Amongst Mountains, taking advantage of the studio's generous acoustics by setting up in a single room and recording to tape in an effort to induce a more performance-based sensibility. The result is an album which, while not entirely devoid of overdubbing and production, leans first and foremost on capturing authentic moments in warm, rich tones and with a distinctly raw, old-world feel. Mirroring the broader themes which connect the individual songs on the album, the recording and instrumentation on Men Amongst Mountains represents the next step in The Revivalists' ever-evolving depth and maturity. Like the band's vaunted live shows, Men Amongst Mountains can and will turn on a dime. The gentle gives way to the heavy, the acoustic to the orchestral. Despair becomes hope. Fire becomes light. At times, the obstacles and troubles in our lives can make the world seem impossibly, hopelessly big. Men Amongst Mountains, ultimately, is about the journey that makes us greater than the mountains standing in our way.",
    "https://towerrecords.com/products/the-revivalists-men-amongst-mountains?variant=32071514161223"
  );

INSERT INTO
  "albums" (
    "album_name",
    "artist_name",
    "rating",
    "price",
    "description",
    "desc_src"
  )
VALUES
  (
    "Anti",
    "Rihanna",
    5,
    12.87,
    "2016 release, the eighth studio album by the R&B superstar. The album features production and/or musical assistance from Scum, Boi-1da, Jeff Bhasker, Hit-Boy, Travis Scott, Kuk Harrell, Drake, SZA and many others. Includes the single 'Work'.",
    "https://towerrecords.com/products/rihanna-anti-3?variant=32464845635655"
  );

INSERT INTO
  "albums" (
    "album_name",
    "artist_name",
    "rating",
    "price",
    "description",
    "desc_src"
  )
VALUES
  (
    "Church Mouth",
    "Portugal. The Man",
    2,
    24.83,
    "Vinyl LP pressing. Church Mouth is the second full-length album from experimental rock band Portugal. The Man. It was released in July, 2007. While the album maintained it's artistic mix of aurora borealis-avant-indie pop and post-punk, Church Mouth paved a new musical path for the band. A departure from 2006's drum-machine and sequencer-heavy Waiter: You Vultures!, Church Mouth leans on Led Zeppelin, The White Stripes, and Santana for inspiration. Front man John Gourley was also listening to a lot of Blind Willie Johnson, Muddy Waters, and Robert Johnson when he wrote the record. While most of us who grew up in the continental US were raised on Saturday morning cartoons and sugary cereal, Gourley's Alaskan upbringing was unorthodox; his youth spent exploring nature in one of the few virtually untouched territories left in the world. As a result, his striking enigmatic vision makes it's mark on the band's packaging, merch design, videos, photos, posters, and the music.",
    "https://towerrecords.com/products/portugal-the-man-church-mouth?variant=32075553112135"
  );

INSERT INTO
  "albums" (
    "album_name",
    "artist_name",
    "rating",
    "price",
    "description",
    "desc_src"
  )
VALUES
  (
    "Fearless",
    "Taylor Swift",
    3,
    10.11,
    "Taylor Swifts new sophomore album, FEARLESS featurex 13 brand-new tracks! Including her latest release 'Changes,' which was released for the 2008 Olympics. Also, 'Breathe,' which is a collaboration between Taylor and one of her BFFs Colbie Caillat (Bubbly).",
    "https://en.wikipedia.org/wiki/Fearless_(Taylor_Swift_album)"
  );

INSERT INTO
  "albums" (
    "album_name",
    "artist_name",
    "rating",
    "price",
    "description",
    "desc_src"
  )
VALUES
  (
    "Rudolph the Red-Nosed Reindeer",
    "Burl Ives",
    5,
    25.74,
    "Limited vinyl LP repressing of the soundtrack to the classic holiday TV special starring the voice of Burl Ives and others.",
    "https://en.wikipedia.org/wiki/Rudolph_the_Red-Nosed_Reindeer_(soundtrack)"
  );

INSERT INTO
  "albums" (
    "album_name",
    "artist_name",
    "rating",
    "price",
    "description",
    "desc_src"
  )
VALUES
  (
    "Spaceships on the Blade",
    "Larry June",
    5,
    32.18,
    "Double orange and bone quad colored vinyl LP pressing. After a monstrous run of sold out North American and European shows following the release of the critically acclaimed album, 'Orange Print,' San Francisco legend and entrepreneur Larry June released his next solo offering, 'Spaceships on the Blade' on LP. The 20-track LP features the hit singles, 'Private Valet' & 'In My Pockets,' and sees production from a wide range of producers, such as Jake One, DJ Khalil, Cardo, DJ Fresh, Chuck Inglish, Turbo & more. With an eye on always expanding and diversifying his income streams, it's clear to see that Uncle Larry is going to continue to do numbers for a long time. Good Job, Larry.",
    "https://towerrecords.com/products/larry-june-spaceships-on-the-blade-orange-bone-quad?variant=39953070981191"
  );

--tracks--
CREATE TABLE "tracks" (
  "id" INTEGER NOT NULL UNIQUE,
  "trackalbum_id" INTEGER NOT NULL,
  "song_name" TEXT NOT NULL,
  PRIMARY KEY("id" AUTOINCREMENT),
  FOREIGN KEY (trackalbum_id) REFERENCES albums(id)
);

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (1, "Harder To Breathe");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (1, "This Love");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (1, "She Will Be Loved");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (1, "Shiver");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (1, "Tangled");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (1, "The Sun");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (1, "Sunday Morning");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (1, "Secret");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (1, "Through with You");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (1, "Not Coming Home");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (1, "Sweetest Goodbye");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (1, "Ragdoll");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (2, "Dream on");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (2, "Mama Kin");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (2, "Sweet Emotion");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (2, "Walk This Way");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (2, "Big Ten Inch Record");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (3, "Rehab Album Version");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (3, "You Know I'm No Good");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (3, "Me ; Mr Jones");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (3, "Back to Black");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (3, "Tears Dry on Their Own");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (4, "No Good");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (4, "Way Down We Go");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (4, "Broken Bones");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (4, "Glass House");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (4, "Hot Blood");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (4, "All the Pretty Girls");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (4, "Automobile");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (4, "Vor I Vaglaskogi");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (4, "Save Yourself");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (5, "Mark My Words");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (5, "I'll Show You");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (5, "What Do You Mean?");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (5, "Sorry");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (5, "Love Yourself");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (5, "Company");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (5, "No Pressure (Featuring Big Sean)");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (5, "Where Are Ü Now");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (6, "Good Morning");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (6, "Champion");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (6, "Stronger");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (6, "I Wonder");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (6, "Good Life");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (6, "Glory");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (6, "Flashing Lights");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (6, "Homecoming");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (6, "Drunk and Hot Girls");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (6, "Big Brother");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (6, "Barry Bonds");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (7, "Keep Going");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (7, "Gold to Glass");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (7, "Wish I Knew You");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (7, "It Was a Sin");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (7, "Monster");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (7, "Stand Up");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (7, "King of What");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (7, "All in the Family");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (7, "Move on");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (7, "Need You");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (7, "Amber");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (7, "Bulletproof");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (7, "Fade Away");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (7, "Men Amongst Mountains");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (8, "Consideration - Rihanna, Sza");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (8, "James Join");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (8, "Kiss It Better");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (8, "Work");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (8, "Desperado");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (8, "Woo");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (8, "Needed Me");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (8, "Yeah, I Said It");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (8, "Same Ol' Mistakes");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (8, "Never Ending");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (8, "Love on the Brain");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (8, "Higher");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (8, "Close to You");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (9, "Church Mouth");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (9, "Sugar Cinnamon");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (9, "Telling Tellers Tell Me");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (9, "My Mind");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (9, "Shade");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (9, "Dawn");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (9, "Oh Lord");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (9, "Bellies Are Full");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (9, "Children");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (9, "The Bottom");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (9, "Sleeping Sleepers Sleep");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (10, "Fearless");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (10, "Fifteen");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (10, "Love Story");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (10, "Hey Stephen");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (10, "White Horse");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (10, "You Belong with Me");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (10, "Breathe");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (10, "Tell Me Why");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (10, "You're Not Sorry");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (10, "The Way I Loved You");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (10, "Forever ; Always");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (10, "The Best Day");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (10, "Change");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (11, "Christmas Medley");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (11, "Overture and a Holly Jolly Christmas");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (11, "Rudolph the Red-Nosed Reindeer");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (11, "Jingle Jingle Jingle");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (11, "There's Always Tomorrow");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (11, "We Are Santa's Elves");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (12, "From Uncle Herm, Pt. 4 (Feat. Herm Lewis)");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (12, "Private Valet");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (12, "I'm Him");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (12, "Things You Do");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (12, "Don't Check Me");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (12, "Another Day, Pt. 2");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (
    12,
    "Tools of the Game (Interlude) (Feat. Wallo267)"
  );

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (12, "Corte Madera, CA");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (12, "Still Boomin (Feat. 2 Chainz)");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (12, "Brand New Machinery (Feat. DUCKWRTH)");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (12, "I'll Make Time");

INSERT INTO
  "tracks" ("trackalbum_id", "song_name")
VALUES
  (12, "In My Pockets");

--genres--
CREATE TABLE "genres" (
  "id" INTEGER NOT NULL UNIQUE,
  "genre_type" TEXT NOT NULL,
  PRIMARY KEY("id" AUTOINCREMENT)
);

INSERT INTO
  "genres" ("genre_type")
VALUES
  ("Rock");

INSERT INTO
  "genres" ("genre_type")
VALUES
  ("Pop");

INSERT INTO
  "genres" ("genre_type")
VALUES
  ("Hip-Hop");

INSERT INTO
  "genres" ("genre_type")
VALUES
  ("Jazz");

INSERT INTO
  "genres" ("genre_type")
VALUES
  ("Blues");

INSERT INTO
  "genres" ("genre_type")
VALUES
  ("Folk");

--albums_genres--
CREATE TABLE "albums_genres" (
  "id" INTEGER NOT NULL UNIQUE,
  "album_id" INTEGER NOT NULL,
  "genre_id" INTEGER NOT NULL,
  PRIMARY KEY("id" AUTOINCREMENT),
  FOREIGN KEY (album_id) REFERENCES albums(id),
  FOREIGN KEY (genre_id) REFERENCES genres(id)
);

INSERT INTO
  "albums_genres" ("album_id", "genre_id")
VALUES
  (1, 2);

INSERT INTO
  "albums_genres" ("album_id", "genre_id")
VALUES
  (1, 1);

INSERT INTO
  "albums_genres" ("album_id", "genre_id")
VALUES
  (2, 1);

INSERT INTO
  "albums_genres" ("album_id", "genre_id")
VALUES
  (2, 2);

INSERT INTO
  "albums_genres" ("album_id", "genre_id")
VALUES
  (3, 4);

INSERT INTO
  "albums_genres" ("album_id", "genre_id")
VALUES
  (3, 5);

INSERT INTO
  "albums_genres" ("album_id", "genre_id")
VALUES
  (4, 5);

INSERT INTO
  "albums_genres" ("album_id", "genre_id")
VALUES
  (4, 1);

INSERT INTO
  "albums_genres" ("album_id", "genre_id")
VALUES
  (5, 2);

INSERT INTO
  "albums_genres" ("album_id", "genre_id")
VALUES
  (5, 3);

INSERT INTO
  "albums_genres" ("album_id", "genre_id")
VALUES
  (6, 3);

INSERT INTO
  "albums_genres" ("album_id", "genre_id")
VALUES
  (6, 2);

INSERT INTO
  "albums_genres" ("album_id", "genre_id")
VALUES
  (7, 1);

INSERT INTO
  "albums_genres" ("album_id", "genre_id")
VALUES
  (7, 5);

INSERT INTO
  "albums_genres" ("album_id", "genre_id")
VALUES
  (8, 2);

INSERT INTO
  "albums_genres" ("album_id", "genre_id")
VALUES
  (8, 3);

INSERT INTO
  "albums_genres" ("album_id", "genre_id")
VALUES
  (8, 5);

INSERT INTO
  "albums_genres" ("album_id", "genre_id")
VALUES
  (9, 1);

INSERT INTO
  "albums_genres" ("album_id", "genre_id")
VALUES
  (9, 2);

INSERT INTO
  "albums_genres" ("album_id", "genre_id")
VALUES
  (10, 2);

INSERT INTO
  "albums_genres" ("album_id", "genre_id")
VALUES
  (10, 6);

INSERT INTO
  "albums_genres" ("album_id", "genre_id")
VALUES
  (11, 6);

INSERT INTO
  "albums_genres" ("album_id", "genre_id")
VALUES
  (11, 5);

INSERT INTO
  "albums_genres" ("album_id", "genre_id")
VALUES
  (12, 3);

INSERT INTO
  "albums_genres" ("album_id", "genre_id")
VALUES
  (12, 2);

--Admin Tables--
CREATE TABLE users (
  "id" INTEGER NOT NULL UNIQUE,
  "email" TEXT NOT NULL,
  "username" TEXT NOT NULL UNIQUE,
  "password" TEXT NOT NULL,
  PRIMARY KEY("id" AUTOINCREMENT)
);

INSERT INTO
  "users" ("email", "username", "password")
VALUES
  (
    "leah78@gmail.com",
    "leah",
    "$2y$10$QtCybkpkzh7x5VN11APHned4J8fu78.eFXlyAMmahuAaNcbwZ7FH." --monkey
  );

CREATE TABLE sessions (
  "id" INTEGER NOT NULL UNIQUE,
  "user_id" INTEGER NOT NULL,
  "session" TEXT NOT NULL UNIQUE,
  "last_login" TEXT NOT NULL,
  PRIMARY KEY(id AUTOINCREMENT) FOREIGN KEY(user_id) REFERENCES users(id)
);

CREATE TABLE album_pics (
  "id" INTEGER NOT NULL UNIQUE,
  "file_name" TEXT NOT NULL,
  "file_ext" TEXT NOT NULL,
  "source" TEXT NOT NULL,
  PRIMARY KEY(id AUTOINCREMENT) FOREIGN KEY (id) REFERENCES albums(id)
);

INSERT INTO
  "album_pics" ("id", "file_name", "file_ext", "source")
VALUES
  (
    1,
    "1.jpg",
    "jpg",
    "https://en.wikipedia.org/wiki/File:Maroon_5_-_Songs_About_Jane.png"
  );

INSERT INTO
  "album_pics" ("id", "file_name", "file_ext", "source")
VALUES
  (
    2,
    "2.jpg",
    "jpg",
    "https://en.wikipedia.org/wiki/File:Aerosmith_-_Aerosmith.jpg"
  );

INSERT INTO
  "album_pics" ("id", "file_name", "file_ext", "source")
VALUES
  (
    3,
    "3.jpg",
    "jpg",
    "https://en.wikipedia.org/wiki/File:Amy_Winehouse_-_Back_to_Black_(album).png"
  );

INSERT INTO
  "album_pics" ("id", "file_name", "file_ext", "source")
VALUES
  (
    4,
    "4.jpg",
    "jpg",
    "https://en.wikipedia.org/wiki/File:KaleoAB2016.jpg"
  );

INSERT INTO
  "album_pics" ("id", "file_name", "file_ext", "source")
VALUES
  (
    5,
    "5.jpg",
    "jpg",
    "https://en.wikipedia.org/wiki/File:Justin_Bieber_-_Purpose_(Official_Album_Cover).png"
  );

INSERT INTO
  "album_pics" ("id", "file_name", "file_ext", "source")
VALUES
  (
    6,
    "6.jpg",
    "jpg",
    "https://m.media-amazon.com/images/I/61PIeKEMGLS._SX466_.jpg"
  );

INSERT INTO
  "album_pics" ("id", "file_name", "file_ext", "source")
VALUES
  (
    7,
    "7.jpg",
    "jpg",
    "https://m.media-amazon.com/images/I/51OjKYlZqyL._SX466_.jpg"
  );

INSERT INTO
  "album_pics" ("id", "file_name", "file_ext", "source")
VALUES
  (
    8,
    "8.jpg",
    "jpg",
    "https://en.wikipedia.org/wiki/File:Rihanna_-_Anti.png"
  );

INSERT INTO
  "album_pics" ("id", "file_name", "file_ext", "source")
VALUES
  (
    9,
    "9.jpg",
    "jpg",
    "https://en.wikipedia.org/wiki/File:Portugal_The_Man_Evil_Friends.jpg"
  );

INSERT INTO
  "album_pics" ("id", "file_name", "file_ext", "source")
VALUES
  (
    10,
    "10.jpg",
    "jpg",
    "https://en.wikipedia.org/wiki/File:Taylor_Swift_-_Fearless.png"
  );

INSERT INTO
  "album_pics" ("id", "file_name", "file_ext", "source")
VALUES
  (
    11,
    "11.jpg",
    "jpg",
    "https://m.media-amazon.com/images/I/71IhR5KFB0L._SX466_.jpg"
  );

INSERT INTO
  "album_pics" ("id", "file_name", "file_ext", "source")
VALUES
  (
    12,
    "12.jpg",
    "jpg",
    "https://media.pitchfork.com/photos/62fe30fe77d5ed1c8131bb81/1:1/w_320,c_limit/Larry-June.jpg"
  );
