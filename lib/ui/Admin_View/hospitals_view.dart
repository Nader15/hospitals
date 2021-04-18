import 'package:flutter/material.dart';

class HospitalsView extends StatefulWidget {
  @override
  _HospitalsViewState createState() => _HospitalsViewState();
}

class _HospitalsViewState extends State<HospitalsView> {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Align(
        alignment: Alignment.centerRight,
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            children: [
              Center(
                  child: Container(
                    // width: screenWidth / 2,
                    height: screenHeight / 1.1,
                    child: ListView.builder(
                        itemCount: 30,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.only(bottom: 20),
                            child: Card(
                              elevation: 10,
                              child: ListTile(
                                contentPadding: const EdgeInsets.all(20.0),
                                onTap: () {},
                                title: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      Icons.arrow_back,
                                      size: 30,
                                    ),
                                    Text(
                                      "مستشفي السلام ",
                                      style: TextStyle(fontSize: 25),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        }),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
