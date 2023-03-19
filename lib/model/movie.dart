import 'package:flutter/material.dart';

class Movie {
  String title;
  String description;
  String imageUrl;
  int year;

  Movie({
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.year,
  });
}

List<Movie> movieList = [
  Movie(
    title: 'The Shawshank Redemption',
    description: 'Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency',
    year: 1994,
    imageUrl: 'https://upload.wikimedia.org/wikipedia/en/8/81/ShawshankRedemptionMoviePoster.jpg'),
  Movie(
      title: 'Eternal Sunshine of the Spotless Mind',
      description: 'After a painful breakup, Clementine (Kate Winslet) undergoes a procedure to erase memories of her former boyfriend Joel (Jim Carrey) from her mind. When Joel discovers that Clementine is going to extremes to forget their relationship, he undergoes the same procedure and slowly begins to forget the woman that he loved.',
      year: 2004,
      imageUrl: 'https://static.wikia.nocookie.net/filmguide/images/2/2a/EternalSunshine.jpg/revision/latest?cb=20170713155118'),
  Movie(
      title: 'Spider-Man: Into the Spider-Verse',
      description: 'Miles Morales, a teenager who admires Spider-Man, struggles to adjust to his new elite boarding school and live up to the expectations of his parents, nurse Rio Morales and police officer Jefferson Davis, who views Spider-Man as a menace. After developing a crush on his classmate Wanda, Miles seeks his uncle Aaron Davis for advice. Aaron encourages Miles’ passion for graffiti and leads him to an abandoned subway station where Miles can draw. While there, Miles is bitten by a genetically modified spider, and develops spider-like abilities.',
      year: 2018,
      imageUrl: 'https://static.wikia.nocookie.net/filmguide/images/0/04/IntotheSpiderVerse.jpg/revision/latest?cb=20220523092219'),
  Movie(
      title: 'Creep',
      description: 'Aaron, a videographer, is driving to meet Josef, who put out an ad for a job. Aaron drives up to a secluded home on a steep driveway, but nobody answers the door so he returns to his car to wait. He seems somewhat nervous due to its secluded nature, and even points to an axe lodged into a tree stump next to the house. Josef startles him by suddenly appearing by the driver side window. Together, they walk into the home, and Josef explains that the home is his family vacation home and that his wife Angela is pregnant. Josef wants to record a series of videos for his unborn son, named "Buddy", due to the fact that he has mere months to live. After beating cancer years ago, it has returned to his brain. Josef exhibits some odd and eccentric behavior such as random hugging, but it seems harmless.',
      year: 2014,
      imageUrl: 'https://static.wikia.nocookie.net/filmguide/images/6/6f/CreepPoster.jpg/revision/latest?cb=20171029060858'),
  Movie(
      title: 'The Matrix',
      description: 'The film describes a world in which the Matrix is an artificial reality created by sentient machines in order to pacify, subdue and make use of the human population as an energy source by growing them and connecting them to the Matrix with cybernetic implants. It contains numerous references to philosophical and religious ideas, the hacker subculture, and homages to Hong Kong action movies, Japanese animation and cyberpunk.',
      year: 1999,
      imageUrl: 'https://static.wikia.nocookie.net/filmguide/images/1/17/The_Matrix_1999_Poster.jpg/revision/latest?cb=20200405231816'),
  Movie(
      title: 'The Last of Us',
      description: "After a global pandemic destroys civilization, a hardened survivor takes charge of a 14-year-old girl who may be humanity's last hope.",
      year: 2023,
      imageUrl: 'https://images.lifestyleasia.com/wp-content/uploads/sites/2/2022/12/02124013/en-hbo-go-the-last-of-us-ellie-645x806-1.jpeg'),
];

