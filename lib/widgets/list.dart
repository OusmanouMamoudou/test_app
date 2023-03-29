import 'package:flutter/material.dart';
import 'package:test_app/widgets/my_card1.dart';
import 'package:test_app/widgets/sbook.dart';

import '../classes/book.dart';

class Listes extends StatelessWidget {
  const Listes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
        child: Column(
      children: [
        Expanded(
          flex: 1,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: books.length,
              itemBuilder: (context, index) {
                return MyCard1(
                  auteur: books[index].author,
                  image: books[index].image,
                  titre: books[index].name,
                  isFavoris: books[index].favoris,
                );
              }),
        ),
        Expanded(
          flex: 2,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  right: size.width * 0.60,
                ),
                child: Text(
                  'Best Seller',
                  style: TextStyle(
                    fontSize: size.height * 0.025,
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: books.length,
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
          ),
        )
      ],
    ));
  }
}
