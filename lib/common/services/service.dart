import 'package:book_library/models/book.dart';

class Webservice {
  Future<List<Book>> fetchData() async {
    final Iterable json = [
      {
        "bookId": '1',
        "name": '1',
        "author": 'author',
        "image":
            'https://images.unsplash.com/photo-1589998059171-988d887df646?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTB8fHxlbnwwfHx8fA%3D%3D&w=1000&q=80',
      },
      {
        "bookId": '2',
        "name": '2',
        "author": 'author',
        "image":
            'https://images.unsplash.com/photo-1589998059171-988d887df646?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTB8fHxlbnwwfHx8fA%3D%3D&w=1000&q=80',
      },
      {
        "bookId": '3',
        "name": '3',
        "author": 'author',
        "image":
            'https://images.unsplash.com/photo-1589998059171-988d887df646?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTB8fHxlbnwwfHx8fA%3D%3D&w=1000&q=80',
      },
      {
        "bookId": '4',
        "name": '4',
        "author": 'author',
        "image":
            'https://images.unsplash.com/photo-1589998059171-988d887df646?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTB8fHxlbnwwfHx8fA%3D%3D&w=1000&q=80',
      },
      {
        "bookId": '5',
        "name": '5',
        "author": 'author',
        "image":
            'https://images.unsplash.com/photo-1589998059171-988d887df646?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTB8fHxlbnwwfHx8fA%3D%3D&w=1000&q=80',
      },
      {
        "bookId": '6',
        "name": '6',
        "author": 'author',
        "image":
            'https://images.unsplash.com/photo-1589998059171-988d887df646?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTB8fHxlbnwwfHx8fA%3D%3D&w=1000&q=80',
      },
      {
        "bookId": '7',
        "name": '7',
        "author": 'author',
        "image":
            'https://images.unsplash.com/photo-1589998059171-988d887df646?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTB8fHxlbnwwfHx8fA%3D%3D&w=1000&q=80',
      }
    ];

    return json.map((book) => Book.fromJson(book)).toList();
  }
}
