import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Navigastion Basic",
      home: FirstRoute(),
    )
  );
}
class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Route'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Open'),
          onPressed: (){
            Navigator.push(context,
              MaterialPageRoute(builder: (context) => SecondRoutes())
            );
          }
        )
      )
    );
  }
}

class SecondRoutes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Scaffold(
      appBar: AppBar(
        title: Text('Second Route'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: (){
            Navigator.pop(context);
          },
          child: Text("Go bach"),
        ),
      ),
    );
  }
}