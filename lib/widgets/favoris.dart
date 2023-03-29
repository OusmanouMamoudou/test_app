import 'package:flutter/material.dart';
import 'package:test_app/classes/book.dart';
import 'package:test_app/widgets/sbook.dart';

class Favoris extends StatelessWidget {
  const Favoris({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        Expanded(
          child: ListView.builder(
              itemCount: books.length - 1,
              itemBuilder: (context, index) {
                return SBoook(
                  auteur: books[index].author,
                  image: books[index].image,
                  titre: books[index].name,
                  isFavoris: books[index].favoris,
                );
              }),
        )
      ],
    ));
  }
}
