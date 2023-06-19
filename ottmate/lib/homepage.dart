import 'package:flutter/material.dart';

class ott {
  String imageUrl = '';
  String title = '';
  ott({required this.imageUrl, required this.title});
}

class HomeScreen extends StatelessWidget {
  String imageUrl = '';
  String title = '';

  List<ott> otts = [
    ott(imageUrl: '', title: 'Netflix'),
    ott(imageUrl: '', title: 'Prime Videos'),
    ott(imageUrl: '', title: 'Hotstar'),
    ott(imageUrl: '', title: 'ZEE5'),
    ott(imageUrl: '', title: 'Swiggy'),
    ott(imageUrl: '', title: 'Zomato'),
    ott(imageUrl: '', title: 'aha'),
    ott(imageUrl: '', title: 'Sony liv')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
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
                  border: Border.all(color: Color.fromARGB(31, 223, 30, 30))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Search OTT",
                      labelText: "Search",
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Icon(Icons.search),
                  )
                ],
              ),
            ),
          ),
          Column(
            children: [
              Text("Favourite Brands"),
              Container(
                child: ListView.builder(
                  itemCount: otts.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 80.0,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      width: 80.0,
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 30.0,
                            backgroundImage: NetworkImage(otts[index].imageUrl),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              )
            ],
          )
        ],
      ),
    ));
  }
}
