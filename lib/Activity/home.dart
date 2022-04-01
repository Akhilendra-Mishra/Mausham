import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}
class _HomeState extends State<Home> {
  String username="Akhil";

  int counter = 1;
  @override
  void initState() {
  }

  void getData() async
  {
  //Get Data
   Response response = await get("https://mytimeapi.herokuapp.com/time/Asia/Lucknow");

   print("response.body");
  }
  int counter1 = 1;
  @override
  void setState(fn) {
    // TODO: implement setState
    super.setState(fn);
    print("Set stste called");
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print("Widget Destroyed");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Activity"),
      ),
      body:
          Column(
            children: <Widget> [
              FloatingActionButton(
                onPressed: () => setState(() {
                  counter += 1;
                }),
              ),
              Text("$counter")
            ],
          )

    );
  }
}
