import 'package:book_library/common/services/service.dart';
import 'package:book_library/models/book.dart';
import 'package:book_library/viewModel/book_view_model.dart';
import 'package:flutter/material.dart';

class BooksListViewModel extends ChangeNotifier {
  List<BookViewModel> books = [];
  Future<void> fetchData() async {
    final results = await Webservice().fetchData();
    books = results.map((item) => BookViewModel(book: item)).toList();
    notifyListeners();
  }

  removeBook(BookViewModel book) {
    books.remove(book);
    notifyListeners();
  }

  editBook(String bookId, String name, String author) {
    books[
        books
            .indexWhere((element) => element.bookId == bookId)] = BookViewModel(
        book: Book(
            bookId: bookId,
            name: name,
            author: author,
            image:
                "https://images.unsplash.com/photo-1589998059171-988d887df646?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTB8fHxlbnwwfHx8fA%3D%3D&w=1000&q=80"));
    notifyListeners();
  }

  addBook(String name, String author) {
    var bookId = DateTime.now().toString();
    books.add(BookViewModel(
        book: Book(
            bookId: bookId,
            name: name,
            author: author,
            image:
                "https://images.unsplash.com/photo-1589998059171-988d887df646?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTB8fHxlbnwwfHx8fA%3D%3D&w=1000&q=80")));
    notifyListeners();
  }
}
