import 'package:flutter/material.dart';
import 'package:test_app/const.dart';
import 'package:test_app/screens/home.dart';
import '../classes/images.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: kBgColor,
        body: SafeArea(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            SizedBox(
              child: Image.asset(Images().logo),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: size.height * 0.05, vertical: size.width * 0.05),
              child: TextField(
                onChanged: (value) {},
                decoration: kInputDecorattion.copyWith(
                  label: const Center(
                    child: Text(
                      'email',
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: size.height * 0.05,
              ),
              child: TextField(
                onChanged: (value) {},
                decoration: kInputDecorattion.copyWith(
                  label: const Center(
                    child: Text(
                      'Mot de Passe',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: size.width * 0.05,
                horizontal: size.height * 0.05,
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => const Home())));
                },
                child: Material(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: size.width * 0.05,
                      horizontal: size.height * 0.05,
                    ),
                    child: const Text(
                      'Connexion',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                  ),
                ),
              ),
            )
          ]),
        ));
  }
}
