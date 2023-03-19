import 'package:flutter/material.dart';
import 'package:profile/model/books.dart';
import 'package:profile/pages/book_details.dart';

class ToRead extends StatefulWidget {
  const ToRead({Key? key}) : super(key: key);

  @override
  State<ToRead> createState() => _ToReadState();
}

class _ToReadState extends State<ToRead> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('To Watch'),
      ),
      body: ListView.builder(
        itemCount: readList.length,
        itemBuilder: (context, index) {
          Books books = readList[index];
          return Card(
            child: ListTile(
                title: Text(books.title),
                subtitle: Text(books.year.toString()),
                leading: Image.network(books.imageUrl),
                trailing: const Icon(Icons.arrow_forward_rounded),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BookDetails(books: readList[index])));
                }
            ),
          );
        },
      ),
    );
  }
}
