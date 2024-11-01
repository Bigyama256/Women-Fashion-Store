import 'package:flutter/material.dart';
import 'package:women_fashion_store/pages/home_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/Illustration.png",
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Let your ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 35,
                            letterSpacing: 1,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Style Speak",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 35,
                            letterSpacing: 1,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Discover the latest trends in women",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              letterSpacing: 0.5,
                              color: Colors.grey),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Fashion and explore your personality",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              letterSpacing: 0.5,
                              color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      for (int i = 0; i < 4; i++)
                        Container(
                          margin: EdgeInsets.only(right: 5),
                          height: 5,
                          width: i == 0 ? 10 : 5,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: i == 0 ? Colors.black : Colors.grey,
                          ),
                        ),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return HomePage();
                    }));
                  },
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(180, 63),
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(45),
                          // bottomRight: Radius.circular(45),
                        ),
                      )),
                  child: Text(
                    'Get Started',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
