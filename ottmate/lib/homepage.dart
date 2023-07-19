import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ott {
  String imageUrl = '';
  String title = '';
  ott({required this.imageUrl, required this.title});
}

class premiums {
  String type = '';
  String name = '';
  int amount = 0;
  int duration = 0;
  int sharing = 0;
  int total = 0;
  premiums(
      {required this.type,
      required this.name,
      required this.amount,
      required this.duration,
      required this.sharing,
      required this.total});
}

class HomeScreen extends StatelessWidget {
  String imageUrl = '';
  String title = '';

  List<ott> otts = [
    ott(imageUrl: 'assets/netflix.jpg', title: 'Netflix'),
    ott(imageUrl: 'assets/prime video.jpg', title: 'Prime'),
    ott(imageUrl: 'assets/hotstar.png', title: 'Hotstar'),
    ott(imageUrl: 'assets/hotstar.png', title: 'ZEE5'),
    ott(imageUrl: 'assets/swiggy.jpg', title: 'Swiggy'),
    ott(imageUrl: 'assets/zomato.webp', title: 'Zomato'),
    ott(imageUrl: 'assets/amazon shopping.png', title: 'amazon'),
    ott(imageUrl: 'assets/sony liv.jpg', title: 'Sony liv')
  ];

  List<premiums> premium = [
    premiums(
        type: 'You Tube Premium',
        name: 'kr',
        amount: 36,
        duration: 1,
        sharing: 1,
        total: 6),
    premiums(
        type: 'Spotify Family Plan',
        name: 'Abhishek',
        amount: 215,
        duration: 6,
        sharing: 4,
        total: 6),
    premiums(
        type: 'You Tube Premium',
        name: 'kumar',
        amount: 36,
        duration: 1,
        sharing: 1,
        total: 4),
    premiums(
        type: 'Netflix',
        name: 'arun',
        amount: 163,
        duration: 1,
        sharing: 1,
        total: 4),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                      color: const Color.fromARGB(255, 240, 235, 235)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Explore",
                        style: TextStyle(fontSize: 18),
                      ),
                      CircleAvatar(
                          backgroundColor: Color.fromARGB(255, 102, 87, 185),
                          radius: 18,
                          child: Icon(
                            Icons.shopping_cart_rounded,
                            size: 25,
                            color: Colors.white,
                          ))
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 49,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: const Color.fromARGB(31, 37, 34, 34))),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      labelText: "Search",
                      suffixIcon: InkWell(
                        child: const Icon(Icons.search),
                        onTap: () {},
                      ),
                      suffixIconColor: Colors.blue,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(14, 2, 5, 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    "Favourite OTT's",
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: otts.length,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: Column(children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage(otts[index].imageUrl),
                            backgroundColor: Colors.white,
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          Text(
                            otts[index].title,
                            style: const TextStyle(fontSize: 13),
                          ),
                        ]),
                      ),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(14, 2, 5, 14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Available Premiums",
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                ],
              ),
            ),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: premium.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                          color: const Color.fromARGB(255, 240, 235, 235)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(
                            width: 40,
                            child: const CircleAvatar(
                              backgroundImage: AssetImage('assets/netflix.jpg'),
                              backgroundColor: Colors.blue,
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  premium[index].type,
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "by ${premium[index].name}",
                                  style: const TextStyle(
                                      fontSize: 13, color: Colors.grey),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "20\u{20B9}/mon",
                                  style: TextStyle(
                                      color:
                                          Color.fromARGB(255, 138, 138, 138)),
                                )
                              ],
                            ),
                          ),
                          const Spacer(),
                          Icon(Icons.arrow_forward)
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      )),
    );
  }
}
