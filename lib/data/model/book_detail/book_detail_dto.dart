import 'package:shelf/data/model/book_detail/author_detail.dart';

class BookDetailDTO {
  final int id;
  final String path;
  final String title;
  final AuthorDetail author;
  final String publisher;
  final String category;
  final DateTime createdAt;
  final String bookIntro;
  final String contentIntro;
  final String isWish;

  const BookDetailDTO({
    required this.id,
    required this.path,
    required this.title,
    required this.author,
    required this.publisher,
    required this.category,
    required this.createdAt,
    required this.bookIntro,
    required this.contentIntro,
    required this.isWish,
  });

  factory BookDetailDTO.fromJson(Map<String, dynamic> json) {
    return BookDetailDTO(
      id: int.parse(json["id"]),
      path: json["path"],
      title: json["title"],
      author: AuthorDetail.fromJson(json["author"]),
      publisher: json["publisher"],
      category: json["category"],
      createdAt: DateTime.parse(json["createdAt"]),
      bookIntro: json["bookIntro"],
      contentIntro: json["contentIntro"],
      isWish: json["isWish"],
    );
  }
//
}
