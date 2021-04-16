import 'package:flutter/material.dart';
import 'package:hospitals/ui/Axes/Constructions.dart';
import 'package:hospitals/ui/home_page.dart';
import 'package:hospitals/utils/Navigator.dart';

class SectionBody extends StatefulWidget {
  @override
  _SectionBodyState createState() => _SectionBodyState();
}

class _SectionBodyState extends State<SectionBody> {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Text(
          "نوع الوحدة",
          style: TextStyle(color: Colors.black, fontSize: 50),
        ),
        SizedBox(
          height: 300,
        ),
        Container(
          width: screenWidth / 1.7,
          height: screenHeight / 3,
          child: GridView.builder(
            itemCount: 3,
            physics: ScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 4,
              mainAxisSpacing: 60,
              crossAxisSpacing: 100,
            ),
            itemBuilder: (context, index) {
              return InkWell(
                onTap: (){
                  navigateAndKeepStack(context, Constructions(currentIndex: 3,));
                },
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0XffE9A4A7),
                            Color(0XffD2B0C3),
                          ]),
                      borderRadius: BorderRadius.circular(25)),
                  child: Text(
                    "مستشفي",
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
