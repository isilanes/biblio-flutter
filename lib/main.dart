import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "biblio-f",
      home: BookListState(),
    );
  }
}

List<String> getBooks() {
  return ["a", "b", "c", "d"];
}

class BookListState extends StatefulWidget {
  const BookListState({super.key});

  @override
  State<BookListState> createState() => _BooksState();
}

class _BooksState extends State<BookListState> {
  final _biggerFont = const TextStyle(fontSize: 24);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("biblio"),
      ),
      body: _bookList(),
    );
  }

  Widget _bookList() {
    return ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          for (final book in getBooks())
            _buildRow(book)
        ],
    );
  }

  Widget _buildRow(String title) {
    return ListTile(
      leading: const Icon(Icons.book, color: Colors.cyan),
      title: Text(
        title,
        style: _biggerFont,
      ),
    );
  }
}