import 'package:bacaansolatlisda/page/main_page.dart';
import 'package:flutter/material.dart';

class SplashMain extends StatelessWidget {
  const SplashMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Color(0xffffffff),
          width: MediaQuery.of(context).size.width,
          child: Container(
            margin: EdgeInsets.only(top: 60),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                const Text(
                  "Do'aKu & SolatKu",
                  style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff82916A),
                      shadows: <Shadow>[
                        Shadow(
                            color: Color.fromARGB(64, 0, 0, 0),
                            offset: Offset(0, 4),
                            blurRadius: 4)
                      ]),
                ),
                Image(
                  image: AssetImage("assets/images/bg_solat.jpg"),
                  height: 385,
                  width: 900,
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: const Text(
                    "“Khusyu Beribadah dan Mencapai Ridhonya”",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Color.fromARGB(180, 0, 0, 0)),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: Material(
                    borderRadius: BorderRadius.circular(25),
                    elevation: 3,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.73,
                      height: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xffCB8655)),
                      child: Material(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {
                            Navigator.pushReplacement(context,
                                MaterialPageRoute(builder: (context) {
                              return MainPage();
                            }));
                          },
                          child: const Center(
                            child: Text(
                              "Mulai",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xffffffff),
                                  shadows: <Shadow>[
                                    Shadow(
                                        color: Color.fromARGB(64, 0, 0, 0),
                                        offset: Offset(0, 2),
                                        blurRadius: 4)
                                  ]),
                            ),
                          ),
                        ),
                      ),
                    ),
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
