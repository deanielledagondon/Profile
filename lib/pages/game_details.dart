import 'package:flutter/material.dart';
import 'package:profile/model/games.dart';

class GameDetails extends StatelessWidget {
  final Games games;

  const GameDetails({Key? key, required this.games}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(games.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(games.imageUrl),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  games.year.toString(),
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 17.0,
                      fontStyle: FontStyle.italic),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  games.description,
                  textAlign: TextAlign.justify,
                  style: const TextStyle(fontSize: 22.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
