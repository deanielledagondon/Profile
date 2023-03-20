import 'package:flutter/material.dart';
import 'package:profile/model/games.dart';
import 'package:profile/pages/game_details.dart';

class FavoriteGames extends StatefulWidget {
  const FavoriteGames({Key? key}) : super(key: key);

  @override
  State<FavoriteGames> createState() => _FavoriteGamesState();
}

class _FavoriteGamesState extends State<FavoriteGames> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Games to Play'),
      ),
      body: ListView.builder(
        itemCount: gameList.length,
        itemBuilder: (context, index) {
          Games games = gameList[index];
          return Card(
            child: ListTile(
                title: Text(games.title),
                subtitle: Text(games.year.toString()),
                leading: Image.network(games.imageUrl),
                trailing: const Icon(Icons.arrow_forward_rounded),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => GameDetails(games: gameList[index])));
                }
            ),
          );
        },
      ),
    );
  }
}
