import 'package:flutter/material.dart';

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
                  border: Border.all(color: Color.fromARGB(255, 240, 235, 235)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Explore",
                        style: TextStyle(fontSize: 23),
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
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Color.fromARGB(31, 37, 34, 34))),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      labelText: "Search",
                      suffixIcon: InkWell(
                        child: Icon(Icons.search),
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
                children: [
                  Text(
                    "Favourite Brands",
                    style: TextStyle(color: Colors.black, fontSize: 22),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: otts.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage(otts[index].imageUrl),
                        backgroundColor: Colors.white,
                      ),
                      Text(otts[index].title),
                    ]);
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(14, 2, 5, 14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Public Groups",
                    style: TextStyle(color: Colors.black, fontSize: 22),
                  ),
                  InkWell(
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: Colors.blue,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("See More"),
                        )),
                    onTap: () {},
                  ),
                ],
              ),
            ),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: premium.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border:
                          Border.all(color: Color.fromARGB(255, 240, 235, 235)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/netflix.jpg'),
                          backgroundColor: Colors.blue,
                          radius: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(premium[index].type),
                            Text("by " + premium[index].name),
                            Text(premium[index].sharing.toString() +
                                " / " +
                                premium[index].total.toString() +
                                " Friends")
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text('\u{20B9}${premium[index].amount}' +
                                '/user/' +
                                premium[index].duration.toString() +
                                "months"),
                            InkWell(
                              child: Container(
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 33, 65, 243)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text("Join"),
                                  )),
                              onTap: () {},
                            )
                          ],
                        )
                      ],
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
