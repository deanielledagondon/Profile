import 'package:flutter/material.dart';
import 'package:profile/model/books.dart';

class BookDetails extends StatelessWidget {
  final Books books;

  const BookDetails({Key? key, required this.books}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(books.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(books.imageUrl),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  books.year.toString(),
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 17.0,
                      fontStyle: FontStyle.italic),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  books.description,
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
