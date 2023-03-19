import 'package:flutter/material.dart';
import 'package:profile/model/movie.dart';
import 'package:profile/pages/movie_details.dart';

class ToWatch extends StatefulWidget {
  const ToWatch({Key? key}) : super(key: key);

  @override
  State<ToWatch> createState() => _ToWatchState();
}

class _ToWatchState extends State<ToWatch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('To Watch'),
      ),
      body: ListView.builder(
          itemCount: movieList.length,
          itemBuilder: (context, index) {
            Movie movie = movieList[index];
            return Card(
              child: ListTile(
                title: Text(movie.title),
                subtitle: Text(movie.year.toString()),
                leading: Image.network(movie.imageUrl),
                trailing: const Icon(Icons.arrow_forward_rounded),
                onTap: () {
                  Navigator.push(
                    context,
                      MaterialPageRoute(builder: (context) => MovieDetails(movie: movieList[index])));
                }
              ),
            );
          },
      ),
    );
  }
}
