import 'package:flutter/material.dart';
import '../widgets/bottomwidget.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List categories = ['Sports', 'Electronics', 'Tools', 'Outdoor'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Container(
            padding: EdgeInsets.all(8),
            margin: EdgeInsets.symmetric(horizontal: 100),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 0),
                      blurRadius: 10,
                      color: Color.fromARGB(255, 220, 220, 220))
                ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.location_on,
                  color: Colors.black,
                ),
                Text(
                  'Tampere',
                  style: TextStyle(color: Colors.black, fontSize: 15),
                )
              ],
            )),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.map_outlined,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25),
              height: 50,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 235, 235, 235),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: IntrinsicWidth(
                  child: TextField(
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                      hintText: 'Search lainappi',
                      icon: Icon(Icons.search),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 80,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.all(20),
                  itemCount: categories.length,
                  itemBuilder: ((context, index) {
                    return Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        padding: EdgeInsets.symmetric(
                            horizontal: 15.0, vertical: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(0, 0),
                                  blurRadius: 10,
                                  color: Color.fromARGB(255, 220, 220, 220))
                            ]),
                        child: Text(
                          categories[index],
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.bold),
                        ));
                  })),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'Lease',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            Container(
              height: 200,
              child: Center(
                child: Image.asset(
                  "assets/pngegg.png",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Pickup',
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(
                          height: 13,
                        ),
                        Container(
                          height: 50,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 235, 235, 235),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                              child: Padding(
                            padding: const EdgeInsets.only(left: 8, right: 50),
                            child: Text(
                              'Sep 6 , 10:00',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                          )),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Dropoff',
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(
                          height: 13,
                        ),
                        Container(
                          height: 50,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 235, 235, 235),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                              child: Padding(
                            padding: const EdgeInsets.only(left: 8, right: 50),
                            child: Text(
                              'Sep 6 , 15:00',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                          )),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
                child: Text(
              '5 hours total',
              style: TextStyle(color: Colors.black.withOpacity(0.2)),
            )),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 22),
              child: Row(
                children: [
                  Icon(
                    Icons.check_box_rounded,
                    color: Color.fromARGB(255, 44, 167, 97),
                    size: 40,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  RichText(
                      text: TextSpan(
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.black), //apply style to all

                          children: [
                        TextSpan(
                            text:
                                'I hereby confirm to have read and accepted \nthe'),
                        TextSpan(
                            text: ' Rental terms',
                            style: TextStyle(
                                color: Color.fromARGB(255, 44, 167, 97))),
                      ]))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 24),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 44, 167, 97),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                    child: Text(
                  'Lease for 500 DZD',
                  style: TextStyle(color: Colors.white, fontSize: 17),
                )),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: bottomwidget(),
    );
  }
}
