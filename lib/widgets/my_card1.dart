import 'package:flutter/material.dart';

import '../screens/detail.dart';

class MyCard1 extends StatelessWidget {
  const MyCard1(
      {Key? key,
      required this.auteur,
      required this.image,
      required this.titre,
      this.isFavoris})
      : super(key: key);
  final String image;
  final String titre;
  final String auteur;
  final bool? isFavoris;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Material(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.003),
        child: TextButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: ((context) =>
                        Detail(image: image, titre: titre, auteur: auteur))));
          },
          child: Stack(
            children: [
              Image.asset(
                image,
                height: size.height * 0.22,
              ),
              Positioned(
                top: size.height * 0.15,
                left: size.width * 0.15,
                child: const CircleAvatar(
                    backgroundColor: Colors.white60,
                    child: Icon(Icons.bookmark_rounded)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
