import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondScreen extends StatefulWidget {
  static const String routeName = "second";

  @override
  State<SecondScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<SecondScreen>
    with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset("assets/images/person1.png"),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello, jade",
                        style: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Ready to workout",
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          fontSize: 18
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Badge(
                      smallSize: 11,
                      child: Icon(
                        Icons.notifications_none,
                        color: Colors.black,
                        size: 25,
                      )),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 75,
                decoration: BoxDecoration(
                  color: Color(0xffF8F9FC),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.favorite_border,
                                size: 17,
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Text("Heart Rate")
                            ],
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            "81 BPM",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      VerticalDivider(
                        thickness: 1.3,
                        indent: 5,
                        endIndent: 5,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.favorite_border,
                                size: 17,
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Text("Heart Rate")
                            ],
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            "81 BPM",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      VerticalDivider(
                        thickness: 1.3,
                        indent: 5,
                        endIndent: 5,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.favorite_border,
                                size: 17,
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Text("Heart Rate")
                            ],
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            "81 BPM",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Workout Programs",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
              ),
              SizedBox(
                height: 23,
              ),
              TabBar(
                  labelStyle: TextStyle(
                    fontSize: 13,
                  ),
                  labelColor: Colors.black,
                  controller: tabController,
                  tabs: [
                    Tab(
                      text: "All Types",
                    ),
                    Tab(
                      text: "Full Body",
                    ),
                    Tab(
                      text: "Upper",
                    ),
                    Tab(
                      text: "Lower",
                    ),
                  ]),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: TabBarView(controller: tabController, children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color:Color(0xffEAECF5),
                          ),
                          height: 165,
                          width: 325,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 25,
                                      width: 57,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Center(child: Text("7 days")),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "Morning Yoga",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text("Improve mental focus."),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.timer),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text("30 mins"),
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: 50,
                                ),
                                Image.asset('assets/images/feature.png'),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color:Color(0xffEAECF5),
                          ),
                          height: 165,
                          width: 325,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 25,
                                      width: 57,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Center(child: Text("7 days")),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "Morning Yoga",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text("Improve mental focus."),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.timer),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text("30 mins"),
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: 50,
                                ),
                                Image.asset('assets/images/feature.png'),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color:Color(0xffEAECF5),
                          ),
                          height: 165,
                          width: 325,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 25,
                                      width: 57,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Center(child: Text("7 days")),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "Morning Yoga",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text("Improve mental focus."),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.timer),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text("30 mins"),
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: 50,
                                ),
                                Image.asset('assets/images/feature.png'),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color:Color(0xffEAECF5),
                          ),
                          height: 165,
                          width: 325,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 25,
                                      width: 57,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Center(child: Text("7 days")),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "Morning Yoga",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text("Improve mental focus."),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.timer),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text("30 mins"),
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: 50,
                                ),
                                Image.asset('assets/images/feature.png'),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color:Color(0xffEAECF5),
                          ),
                          height: 165,
                          width: 325,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 25,
                                      width: 57,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Center(child: Text("7 days")),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "Morning Yoga",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text("Improve mental focus."),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.timer),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text("30 mins"),
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: 50,
                                ),
                                Image.asset('assets/images/feature.png'),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color:Color(0xffEAECF5),
                          ),
                          height: 165,
                          width: 325,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 25,
                                      width: 57,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Center(child: Text("7 days")),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "Morning Yoga",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text("Improve mental focus."),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.timer),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text("30 mins"),
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: 50,
                                ),
                                Image.asset('assets/images/feature.png'),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color:Color(0xffEAECF5),
                          ),
                          height: 165,
                          width: 325,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 25,
                                      width: 57,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Center(child: Text("7 days")),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "Morning Yoga",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text("Improve mental focus."),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.timer),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text("30 mins"),
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: 50,
                                ),
                                Image.asset('assets/images/feature.png'),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color:Color(0xffEAECF5),
                          ),
                          height: 165,
                          width: 325,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 25,
                                      width: 57,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Center(child: Text("7 days")),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "Morning Yoga",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text("Improve mental focus."),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.timer),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text("30 mins"),
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: 50,
                                ),
                                Image.asset('assets/images/feature.png'),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color:Color(0xffEAECF5),
                          ),
                          height: 165,
                          width: 325,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 25,
                                      width: 57,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Center(child: Text("7 days")),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "Morning Yoga",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text("Improve mental focus."),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.timer),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text("30 mins"),
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: 50,
                                ),
                                Image.asset('assets/images/feature.png'),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color:Color(0xffEAECF5),
                          ),
                          height: 165,
                          width: 325,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 25,
                                      width: 57,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Center(child: Text("7 days")),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "Morning Yoga",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text("Improve mental focus."),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.timer),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text("30 mins"),
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: 50,
                                ),
                                Image.asset('assets/images/feature.png'),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color:Color(0xffEAECF5),
                          ),
                          height: 165,
                          width: 325,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 25,
                                      width: 57,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Center(child: Text("7 days")),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "Morning Yoga",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text("Improve mental focus."),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.timer),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text("30 mins"),
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: 50,
                                ),
                                Image.asset('assets/images/feature.png'),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color:Color(0xffEAECF5),
                          ),
                          height: 165,
                          width: 325,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 25,
                                      width: 57,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Center(child: Text("7 days")),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "Morning Yoga",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text("Improve mental focus."),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.timer),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text("30 mins"),
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: 50,
                                ),
                                Image.asset('assets/images/feature.png'),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                ]),
              )
            ],
          ),
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
                icon: Icon(Icons.navigation),
                label: "",
                backgroundColor: Colors.transparent),
            BottomNavigationBarItem(
                icon: Icon(Icons.bar_chart),
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
