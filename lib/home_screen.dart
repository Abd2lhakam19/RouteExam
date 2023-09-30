import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class HomeScreen extends StatefulWidget {
  static const String routeName = "home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          leading: const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Image(
              image: AssetImage("assets/images/logo.png"),
            ),
          ),
          title: const Text(
            "Moody",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w400, fontSize: 24),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Badge(
                  smallSize: 11,
                  child: Icon(
                    Icons.notifications_none,
                    color: Colors.black,
                    size: 25,
                  )),
            )
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 35.0, top: 25),
              child: Row(children: [
                Text(
                  "Hello, ",
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  "Mahmoud",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                )
              ]),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 35.0),
              child: Text(
                "How are you feeling today",
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Image.asset("assets/images/love.png"),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Love")
                  ],
                ),
                Column(
                  children: [
                    Image.asset("assets/images/cool.png"),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Cool")
                  ],
                ),
                Column(
                  children: [
                    Image.asset("assets/images/happy.png"),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Happy")
                  ],
                ),
                Column(
                  children: [
                    Image.asset("assets/images/sad.png"),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Sad")
                  ],
                )
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 35.0),
              child: Row(
                children: [
                  Text(
                    "Feature",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 35.0),
                    child: Row(
                      children: [
                        Text(
                          "See More",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff027A48)),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 14,
                          color: Color(0xff027A48),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            CarouselSlider.builder(
              options: CarouselOptions(
                height: 190,
                aspectRatio: 1,
                viewportFraction: 0.8,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                enlargeFactor: 0.3,
                onPageChanged: (index, reason) {},
                scrollDirection: Axis.horizontal,
              ),
              itemCount: 15,
              itemBuilder:
                  (BuildContext context, int itemIndex, int pageViewIndex) =>
                      Container(
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xffECFDF3),
                    borderRadius: BorderRadius.circular(25)
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, top: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Positive vibes",
                              style: TextStyle(
                                  color: Color(0xff344054), fontSize: 16),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Boost your vibes with\npositive vibes",
                              style: TextStyle(fontSize: 16),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Row(
                              children: [
                                Image.asset("assets/images/play.png"),
                                SizedBox(
                                  width: 5,
                                ),
                                Text("10 mins")
                              ],
                            )
                          ],
                        ),
                      ),
                      Image.asset(
                        "assets/images/feature.png",
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 35.0),
              child: Row(
                children: [
                  Text(
                    "Exercise",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 35.0),
                    child: Row(
                      children: [
                        Text(
                          "See More",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff027A48)),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 14,
                          color: Color(0xff027A48),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 35.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Stack(
                        alignment: Alignment.centerLeft,
                        children: [
                          Container(
                            height: 50,
                            width: 151,
                            decoration: BoxDecoration(
                                color: Color(0xffF9F5FF),
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset("assets/images/realx.png"),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Relaxation",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      Stack(
                        alignment: Alignment.centerLeft,
                        children: [
                          Container(
                            height: 50,
                            width: 151,
                            decoration: BoxDecoration(
                                color: Color(0xffF9F5FF),
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset("assets/images/medetation.png"),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Meditation",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14),
                                )
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Stack(
                        alignment: Alignment.centerLeft,
                        children: [
                          Container(
                            height: 50,
                            width: 151,
                            decoration: BoxDecoration(
                                color: Color(0xffF9F5FF),
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset("assets/images/beathing.png"),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Beathing",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      Stack(
                        alignment: Alignment.centerLeft,
                        children: [
                          Container(
                            height: 50,
                            width: 151,
                            decoration: BoxDecoration(
                                color: Color(0xffF9F5FF),
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset("assets/images/yoga.png"),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Yoga",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14),
                                )
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          selectedItemColor: Color(0xff027A48),
          unselectedItemColor: Colors.black.withOpacity(0.5),
          type: BottomNavigationBarType.shifting,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_filled,
                ),
                label: "",
                backgroundColor: Colors.transparent),
            BottomNavigationBarItem(
                icon: Icon(Icons.grid_view),
                label: "",
                backgroundColor: Colors.transparent),
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_today),
                label: "",
                backgroundColor: Colors.transparent),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "",
                backgroundColor: Colors.transparent)
          ],
        ),
      ),
    );
  }
}
