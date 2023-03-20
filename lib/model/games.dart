class Games {
  String title;
  String description;
  String imageUrl;
  int year;

  Games({
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.year,
  });
}

List<Games> gameList = [
  Games(
      title: 'Subnautica',
      description: "Subnautica is an open-world action-adventure game developed and published by Unknown Worlds Entertainment. The game has the player as a non-essential systems maintenance chief who is the only survivor of a spaceship crash on the alien planet 4546B.",
      year: 2014,
      imageUrl: 'https://upload.wikimedia.org/wikipedia/en/thumb/6/6d/Subnautica_cover_art.png/220px-Subnautica_cover_art.png'),
  Games(
      title: 'Outlast',
      description: "Outlast is a 2013 first-person survival horror video game developed and published by Red Barrels. The game revolves around a freelance investigative journalist, Miles Upshur, who decides to investigate a remote psychiatric hospital named Mount Massive Asylum, located deep in the mountains of Lake County, Colorado.",
      year: 2013,
      imageUrl: 'https://upload.wikimedia.org/wikipedia/en/thumb/a/aa/Outlast_cover.jpg/220px-Outlast_cover.jpg'),
  Games(
      title: 'Resident Evil 7: Biohazard',
      description: "Resident Evil 7: Biohazard[a] is a 2017 survival horror game developed and published by Capcom. The player controls Ethan Winters as he searches for his long-missing wife in a derelict plantation occupied by an infected family, solving puzzles and fighting enemies. Resident Evil 7 diverges from the more action-oriented Resident Evil 5 and Resident Evil 6, returning to the franchise's survival horror roots, emphasizing exploration. It is the first main Resident Evil game to use a first-person view.",
      year: 2017,
      imageUrl: 'https://upload.wikimedia.org/wikipedia/en/thumb/f/fd/Resident_Evil_7_cover_art.jpg/220px-Resident_Evil_7_cover_art.jpg'),
  Games(
      title: 'The Last of Us',
      description: "The Last of Us is a 2013 action-adventure game developed by Naughty Dog and published by Sony Computer Entertainment. Players control Joel, a smuggler tasked with escorting a teenage girl, Ellie, across a post-apocalyptic United States. The Last of Us is played from a third-person perspective. Players use firearms and improvised weapons and can use stealth to defend against hostile humans and cannibalistic creatures infected by a mutated fungus. In the online multiplayer mode, up to eight players engage in cooperative and competitive gameplay.",
      year: 2013,
      imageUrl: 'https://upload.wikimedia.org/wikipedia/en/thumb/4/46/Video_Game_Cover_-_The_Last_of_Us.jpg/220px-Video_Game_Cover_-_The_Last_of_Us.jpg'),
  Games(
      title: 'God of War',
      description: "God of War[b] is an action-adventure game developed by Santa Monica Studio and published by Sony Interactive Entertainment. It was released for the PlayStation 4 in April 2018, with a Windows port in January 2022. The game is the eighth installment in the God of War series, the eighth chronologically, and the sequel to 2010's God of War III. Unlike previous games, which were loosely based on Greek mythology, this installment is loosely inspired by Norse mythology, with the majority of it set in ancient Scandinavia in the realm of Midgard. For the first time in the series, there are two protagonists: Kratos, the former Greek God of War who remains the only playable character, and his young son, Atreus. Following the death of Kratos' second wife Faye—Atreus' mother—the two embark on a journey to fulfill her request that her ashes be spread at the highest peak of the nine realms. Kratos keeps his troubled past a secret from Atreus, who is unaware of his divine nature. Along their journey, they come into conflict with monsters and gods of the Norse world.",
      year: 2018,
      imageUrl: 'https://upload.wikimedia.org/wikipedia/en/thumb/a/a7/God_of_War_4_cover.jpg/220px-God_of_War_4_cover.jpg'),
  Games(
      title: 'It Takes Two',
      description: "It Takes Two is an action-adventure platform video game developed by Hazelight Studios and published by Electronic Arts. It was released for PlayStation 4, PlayStation 5, Windows, Xbox One, and Xbox Series X/S in March 2021, and was released for Nintendo Switch in November 2022. Like Hazelight's debut game A Way Out, it does not have a single-player option. It is playable only in either online or local split screen cooperative multiplayer between two players.",
      year: 2021,
      imageUrl: 'https://upload.wikimedia.org/wikipedia/en/thumb/a/aa/It_Takes_Two_cover_art.png/220px-It_Takes_Two_cover_art.png'),
];

