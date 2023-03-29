import 'package:test_app/classes/images.dart';

class Book {
  String name;
  String author;
  String image;
  bool favoris;
  Book({
    required this.name,
    required this.author,
    required this.image,
    required this.favoris,
  });
}

List<Book> books = [
  Book(
      name: 'Tome 1 - Le Guide du voyageur galactique',
      author: 'Douglas Adams',
      image: Images().guideDuVoyageurG,
      favoris: true),
  Book(
      name: 'Tome 2 - Le Dernier restaurant avant la fin...',
      author: 'Douglas Adams',
      image: Images().dernierRestaurant,
      favoris: true),
  Book(
      name: "Tome 3 - La vie, l'univers et le reste",
      author: 'Douglas Adams',
      image: Images().vieDeLUnivers,
      favoris: true),
  Book(
      name: 'Tome 4 - Salut et encore merci le poison',
      author: 'Douglas Adams',
      image: Images().salutEtEncore,
      favoris: false),
];
