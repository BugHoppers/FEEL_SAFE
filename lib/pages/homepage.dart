import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String _locationEntered="";

  handleReport(){

  }
  handleLocation(val){
    print(val);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FEEL SAFE"),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              MaterialButton(
                child: Text("Report Now"),
                onPressed: handleReport,
                color: Colors.blue,
              ),
              Text("Get data"),
              TextField(
                onChanged: (value) => handleLocation(value),
                decoration: InputDecoration(hintText: "Enter Location"),
              ),
              Text(
                "OR"
              ),
              MaterialButton(
                child: Text("Choose on Map"),
                color: Colors.blue,
                onPressed: (){},
              )
            ],
          ),
        ),
      ),
    );
  }
}