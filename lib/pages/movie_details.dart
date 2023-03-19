import 'package:flutter/material.dart';
import 'package:profile/model/movie.dart';

class MovieDetails extends StatelessWidget {
  final Movie movie;

  const MovieDetails({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(movie.title),
      ),
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(movie.imageUrl),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    movie.year.toString(),
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontSize: 17.0,
                        fontStyle: FontStyle.italic),
                  ),
              ),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    movie.description,
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
