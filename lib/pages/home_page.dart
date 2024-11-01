import 'package:flutter/material.dart';
import 'package:women_fashion_store/pages/product_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(35.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        "Hello ,",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 34,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          "Amanda",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 34,
                            color: Color(0xFFFFC74A),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Image.asset(
                    'assets/dp.png',
                    height: 50,
                    width: 80,
                  )
                ],
              ),
              SizedBox(
                height: 25,
              ),
              CollectionCards(
                collectionName: 'Summer/Collections',
                imageUrl: 'assets/yellow.png',
                cardColor: (0xFFFFF3E7),
              ),
              SizedBox(
                height: 50,
              ),
              CollectionCards(
                collectionName: 'Winter/Collections',
                imageUrl: 'assets/red.png',
                cardColor: 0xFFFCDFEA,
              ),
              SizedBox(
                height: 50,
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Offers",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 36,
                  ),
                ),
              ),
               SizedBox(
                height: 50,
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  height: 190,
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          height: 150,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Color(0xFFFEAF0FF),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Image.asset('assets/blue.png'),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Row(
                                children: [
                                  for (int j = 0; j < 3; j++)
                                    Container(
                                      margin: EdgeInsets.only(right: 5),
                                      height: 3,
                                      width: j == 0 ? 39 : 19,
                                      decoration: BoxDecoration(
                                        color:
                                            j == 0 ? Colors.black : Colors.grey,
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(8),
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                            SizedBox(
                              height: 20,
                             ),
                              Row(
                                children: [
                                  Text(
                                    "Get",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "30%",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30,
                                        color: Color(0xFFF6B63DD)),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "Off",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30),
                                  ),
                                ],
                              ),
                             SizedBox(
                              height: 20,
                             ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    minimumSize: Size(181, 48),
                                    backgroundColor: Colors.black,
                                    shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(45),
                                      ),
                                    )),
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return ProductPage();
                                  }));
                                },
                                child: Text("Know More",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            
            ],
          ),
        ),
      ),
    );
  }
}

class CollectionCards extends StatelessWidget {
  final String collectionName;
  final String imageUrl;
  final int cardColor;
  const CollectionCards(
      {super.key,
      required this.collectionName,
      required this.imageUrl,
      required this.cardColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 182,
      width: double.infinity,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: 137,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color(cardColor),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      collectionName,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(alignment: Alignment.bottomRight, child: Image.asset(imageUrl)),
        ],
      ),
    );
  }
}
