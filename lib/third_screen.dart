import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThirdScreen extends StatelessWidget {
  static const String routeName = "third";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/flower.png"),
              SizedBox(
                width: 2,
              ),
              Text(
                "AliceCare",
                style: GoogleFonts.milonga(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.w400
                ),
              ),
            ],
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              height: 40,
              width: 300,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  prefixIcon: Icon(Icons.search),
                  hintText: "Articles, Video, Audio and More,",
                  contentPadding: EdgeInsets.all(12),
                  hintStyle: GoogleFonts.inter(
                    fontSize: 16,

                  )
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
