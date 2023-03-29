import 'package:flutter/material.dart';
import 'package:test_app/screens/detail.dart';

class SBoook extends StatelessWidget {
  const SBoook(
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
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: size.height * 0.01,
        vertical: size.width * 0.01,
      ),
      child: TextButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: ((context) =>
                      Detail(image: image, titre: titre, auteur: auteur))));
        },
        child: Row(
          children: [
            SizedBox(
              child: Image.asset(image),
            ),
            Expanded(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(size.height * 0.01),
                    child: Text(
                      titre,
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                        fontSize: size.height * 0.025,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(size.height * 0.01),
                    child: Text(
                      auteur,
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                        fontSize: size.height * 0.025,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: size.width * 0.50),
                    child: CircleAvatar(
                        backgroundColor:
                            isFavoris == true ? Colors.white : Colors.grey,
                        child: const Icon(Icons.bookmark_rounded)),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
