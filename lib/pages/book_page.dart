import 'dart:convert';
import 'package:flutter/material.dart';

import '../styles/AppTheme.dart';

class BookListPage extends StatefulWidget {
  const BookListPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _BookListPageState createState() => _BookListPageState();
}

class _BookListPageState extends State<BookListPage> {
  List<Book> bookList = [];

  @override
  void initState() {
    super.initState();
    loadBooks();
  }

  Future<void> loadBooks() async {
    // Load the book data from a JSON file
    String jsonData = await DefaultAssetBundle.of(context).loadString('assets/json/books.json');
    List<dynamic> jsonList = json.decode(jsonData);

    // Convert the JSON data into a list of Book objects
    List<Book> books = [];
    for (dynamic jsonItem in jsonList) {
      Book book = Book.fromJson(jsonItem);
      books.add(book);
    }

    setState(() {
      bookList = books;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 30.0,
        backgroundColor: Color.fromARGB(255, 213, 210, 210), 
        title: const Text(
          'Book List',style: AppTheme.nbodyText,),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: bookList.length,
        itemBuilder: (BuildContext context, int index) {
          Book book = bookList[index];
          return BookCard(
            title: book.title,
            author: book.author,
            coverImageUrl: book.coverImageUrl,
          );
        },
      ),
    );
  }
}

class BookCard extends StatelessWidget {
  final String title;
  final String author;
  final String coverImageUrl;

  const BookCard({
    Key? key,
    required this.title,
    required this.author,
    required this.coverImageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 4.0,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 80.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              image: DecorationImage(
                image: AssetImage(coverImageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 16.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8.0),
                Text(
                  'By $author',
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Book {
  final String title;
  final String author;
  final String coverImageUrl;

  Book({
    required this.title,
    required this.author,
    required this.coverImageUrl,
  });

  factory Book.fromJson(Map<String, dynamic> json) {
    return Book(
      title: json['title'] ?? '',
      author: json['author'] ?? '',
      coverImageUrl: json['coverImageUrl'] ?? '',
    );
  }
}
