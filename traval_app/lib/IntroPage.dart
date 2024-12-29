import 'package:flutter/material.dart';
import 'package:traval_app/main.dart';

class IntroPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Intro"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
              Text("User Name", style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.bold,
              ),),
            SizedBox(
              height: 11,
            ),
            ElevatedButton(onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MyHomePage(title: "Hotels"),));
            }, child: Text("Next"))
          ],
        ),
      ),
    );
  }

}