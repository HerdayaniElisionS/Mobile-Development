import 'package:flutter/material.dart';
import '../constants/colors.dart';

class AboutMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: tdBGColor,
        title: Text("About Me", style: TextStyle(color: tdBGColor)),
        iconTheme: IconThemeData(color: tdblue),
        elevation: 0,
      ),
      backgroundColor: tdBlck,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/IMG_6585.jpg'),
            ),
            SizedBox(height: 20),
            Text(
              "Herdayani Elision Sitio",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: tdBGColor),
            ),
            Text(
              "Nickname: Elision",
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            SizedBox(height: 10),
            Text(
              "Hobbies",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: tdBGColor),
            ),
            Text("Reading books", style: TextStyle(color: tdBGColor)),
            Text("Watching movies", style: TextStyle(color: tdBGColor)),
            Text("Playing piano", style: TextStyle(color: tdBGColor)),
            SizedBox(height: 10),
            Text(
              "Social Media",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: tdBGColor),
            ),
            Text(
              "Instagram: @ellisionst",
              style: TextStyle(color: tdBGColor),
            ),
          ],
        ),
      ),
    );
  }
}
