import 'package:flutter/material.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text(
          "About Us",
          style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
          ),
        ),
        backgroundColor:Color.fromARGB(255, 24, 116, 116),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Color.fromARGB(255, 255, 255, 255),
          width: MediaQuery.of(context).size.width,
          child: Container(
            margin: const EdgeInsets.only(top: 60),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                const Image(
                    image: AssetImage(
                  "assets/images/aboutlisda.png",
                )),
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: const Text(
                    "",
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w700,
                        color: Color.fromARGB(180, 0, 0, 0)),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  child: Material(
                    borderRadius: BorderRadius.circular(25),
                    elevation: 3,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
