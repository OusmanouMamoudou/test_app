import 'package:flutter/material.dart';
import 'package:test_app/const.dart';

import '../classes/book.dart';

class Detail extends StatelessWidget {
  const Detail(
      {Key? key,
      required this.image,
      required this.titre,
      required this.auteur})
      : super(key: key);
  final String image;
  final String titre;
  final String auteur;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
            backgroundColor: kBgColor,
            body: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      right: size.width * 0.85,
                      top: size.height * 0.02,
                      bottom: size.height * 0.03),
                  child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.close,
                        size: size.height * 0.05,
                      )),
                ),
                Center(
                  child: Image.asset(
                    image,
                    height: size.height * 0.2,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(size.height * 0.02),
                  child: Text(
                    titre,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                      fontSize: size.height * 0.03,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(size.height * 0.02),
                  child: Text(
                    auteur,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                      fontSize: size.height * 0.025,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(size.height * 0.02),
                  child: Material(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: size.width * 0.05,
                          vertical: size.height * 0.01,
                        ),
                        child: Icon(
                          Icons.bookmark_rounded,
                          size: size.height * 0.05,
                          color: Colors.black,
                        ),
                      )),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    right: size.width * 0.45,
                    top: size.height * 0.05,
                    bottom: size.height * 0.01,
                  ),
                  child: Text(
                    'You can also like',
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                      fontSize: size.height * 0.025,
                    ),
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              itemCount: books.length,
                              itemBuilder: (context, index) {
                                return Image.asset(
                                  books[index].image,
                                );
                              }))
                    ],
                  ),
                )
              ],
            )));
  }
}
