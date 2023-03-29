import 'package:flutter/material.dart';
import 'package:test_app/widgets/favoris.dart';
import 'package:test_app/widgets/list.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isFav = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: size.height * 0.08),
            child: Center(
              child: RichText(
                  text: TextSpan(
                style: TextStyle(
                  fontSize: size.height * 0.05,
                ),
                children: [
                  const TextSpan(
                    text: 'Marvin',
                  ),
                  TextSpan(
                    text: 'Book',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: size.height * 0.05,
                    ),
                  )
                ],
              )),
            ),
          ),
          Expanded(
            child: Stack(
              children: [
                isFav ? const Favoris() : const Listes(),
                Positioned(
                  bottom: size.height * 0.05,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: size.width * 0.30,
                    ),
                    child: Material(
                      color: const Color.fromARGB(153, 100, 97, 97),
                      borderRadius: BorderRadius.circular(50),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: size.width * 0.04,
                          vertical: size.height * 0.005,
                        ),
                        child: Row(children: [
                          IconButton(
                              icon: Icon(
                                Icons.book_sharp,
                                color:
                                    isFav == true ? Colors.grey : Colors.white,
                                size: size.height * 0.03,
                              ),
                              onPressed: () {
                                setState(() {
                                  isFav = false;
                                });
                              }),
                          SizedBox(
                            width: size.width * 0.1,
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.bookmark_rounded,
                              color:
                                  isFav == false ? Colors.grey : Colors.white,
                              size: size.height * 0.03,
                            ),
                            onPressed: () {
                              setState(() {
                                isFav = true;
                              });
                            },
                          ),
                        ]),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
