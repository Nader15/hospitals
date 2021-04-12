import 'package:flutter/material.dart';

class Draft extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Align(
            child: Container(
              width: MediaQuery.of(context).size.width/2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("1",style: TextStyle(fontSize: 30),),
                  Text("2",style: TextStyle(fontSize: 30),),
                  Text("3",style: TextStyle(fontSize: 30),),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
