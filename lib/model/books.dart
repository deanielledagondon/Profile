import 'package:flutter/material.dart';

class Books {
  String title;
  String description;
  String imageUrl;
  int year;

  Books({
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.year,
  });
}

List<Books> readList = [
  Books(
      title: 'Vampire Academy',
      description: "Lissa Dragomir is a Moroi princess: a mortal vampire with a rare gift for harnessing the earth's magic. She must be protected at all times from Strigoi; the fiercest vampires—the ones who never die. The powerful blend of human and vampire blood that flows through Rose Hathaway, Lissa's best friend, makes her a dhampir. Rose is dedicated to a dangerous life of protecting Lissa from the Strigoi, who are hell-bent on making Lissa one of them. After two years of freedom, Rose and Lissa are caught and dragged back to St. Vladimir's Academy, a school for vampire royalty and their guardians-to-be, hidden in the deep forests of Montana. But inside the iron gates, life is even more fraught with danger... and the Strigoi are always close by. Rose and Lissa must navigate their dangerous world, confront the temptations of forbidden love, and never once let their guard down, lest the evil undead make Lissa one of them forever.",
      year: 2007,
      imageUrl: 'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1361098973i/345627.jpg'),
  Books(
      title: 'The Lightning Thief',
      description: "Percy Jackson is a good kid, but he can't seem to focus on his schoolwork or control his temper. And lately, being away at boarding school is only getting worse - Percy could have sworn his pre-algebra teacher turned into a monster and tried to kill him. When Percy's mom finds out, she knows it's time that he knew the truth about where he came from, and that he go to the one place he'll be safe. She sends Percy to Camp Half Blood, a summer camp for demigods (on Long Island), where he learns that the father he never knew is Poseidon, God of the Sea. Soon a mystery unfolds and together with his friends—one a satyr and the other the demigod daughter of Athena - Percy sets out on a quest across the United States to reach the gates of the Underworld (located in a recording studio in Hollywood) and prevent a catastrophic war between the gods.",
      year: 2005,
      imageUrl: 'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1400602609i/28187.jpg'),
  Books(
      title: 'The Lost Hero',
      description: "JASON HAS A PROBLEM. He doesn’t remember anything before waking up in a bus full of kids on a field trip. Apparently he has a girlfriend named Piper, and his best friend is a guy named Leo. They’re all students at the Wilderness School, a boarding school for bad kids, as Leo puts it. What did Jason do to end up here? And where is here, exactly? Jason doesn't know anything—except that everything seems very wrong.",
      year: 2010,
      imageUrl: 'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1464201003i/7736182.jpg'),
  Books(
      title: 'Graceling',
      description: "Katsa has been able to kill a man with her bare hands since she was eight—she’s a Graceling, one of the rare people in her land born with an extreme skill. As niece of the king, she should be able to live a life of privilege, but Graced as she is with killing, she is forced to work as the king’s thug. She never expects to fall in love with beautiful Prince Po. She never expects to learn the truth behind her Grace—or the terrible secret that lies hidden far away . . . a secret that could destroy all seven kingdoms with words alone. With elegant, evocative prose and a cast of unforgettable characters, debut author Kristin Cashore creates a mesmerizing world, a death-defying adventure, and a heart-racing romance that will consume you, hold you captive, and leave you wanting more.",
      year: 2008,
      imageUrl: 'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1331548394i/3236307.jpg'),
  Books(
      title: 'Ender’s Game',
      description: "Andrew Wiggin thinks he is playing computer simulated war games; he is, in fact, engaged in something far more desperate. The result of genetic experimentation, Ender may be the military genius Earth desperately needs in a war against an alien enemy seeking to destroy all human life. The only way to find out is to throw Ender into ever harsher training, to chip away and find the diamond inside, or destroy him utterly. Ender Wiggin is six years old when it begins. He will grow up fast. But Ender is not the only result of the experiment. The war with the Buggers has been raging for a hundred years, and the quest for the perfect general has been underway almost as long. Ender's two older siblings, Peter and Valentine, are every bit as unusual as he is, but in very different ways. While Peter was too uncontrollably violent, Valentine very nearly lacks the capability for violence altogether. Neither was found suitable for the military's purpose. But they are driven by their jealousy of Ender, and by their inbred drive for power. Peter seeks to control the political process, to become a ruler. Valentine's abilities turn more toward the subtle control of the beliefs of commoner and elite alike, through powerfully convincing essays. Hiding their youth and identities behind the anonymity of the computer networks, these two begin working together to shape the destiny of Earth-an Earth that has no future at all if their brother Ender fails.",
      year: 1985,
      imageUrl: 'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1408303130i/375802.jpg'),
  Books(
      title: 'Beautiful Creatures',
      description: "Lena Duchannes is unlike anyone the small Southern town of Gatlin has ever seen, and she's struggling to conceal her power, and a curse that has haunted her family for generations. But even within the overgrown gardens, murky swamps and crumbling graveyards of the forgotten South, a secret cannot stay hidden forever. Ethan Wate, who has been counting the months until he can escape from Gatlin, is haunted by dreams of a beautiful girl he has never met. When Lena moves into the town's oldest and most infamous plantation, Ethan is inexplicably drawn to her and determined to uncover the connection between them.",
      year: 2009,
      imageUrl: 'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1327873282i/6304335.jpg'),
];

