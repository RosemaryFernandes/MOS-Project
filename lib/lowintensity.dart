import 'package:flutter/material.dart';

class low1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Low intensity (Each for 30s!)'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        scrollDirection: Axis.vertical,
        children: [
          Container(
            child: Image(
              image: AssetImage('assets/1.gif'),
              height: 400,
              width: 400,
              fit: BoxFit.contain, // Adjust BoxFit property here
            ),
          ),
          SizedBox(height: 10),
          Image(
            image: AssetImage('assets/2.gif'),
            height: 400,
            width: 400,
            fit: BoxFit.contain,
          ),
          SizedBox(height: 10),
          Image(
            image: AssetImage('assets/3.gif'),
            height: 400,
            width: 400,
            fit: BoxFit.contain,
          ),
          SizedBox(height: 10),
          Image(
            image: AssetImage('assets/4.gif'),
            height: 400,
            width: 400,
            fit: BoxFit.contain,
          ),
          SizedBox(height: 10),
          Image(
            image: AssetImage('assets/5.gif'),
            height: 400,
            width: 400,
            fit: BoxFit.contain,
          ),
          SizedBox(height: 10),
          Image(
            image: AssetImage('assets/6.jpg'),
            height: 400,
            width: 400,
            fit: BoxFit.contain,
          ),
          
        ],
      ),
    );
  }
}
