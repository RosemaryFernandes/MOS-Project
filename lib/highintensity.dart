import 'package:flutter/material.dart';

class highint extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      appBar: AppBar(
        title: Text('High Intensity(Each for 45s!)'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        scrollDirection: Axis.vertical,
        children: [
          Container(
            child: Image(
              image: AssetImage('assets/int1.gif'),
              height: 400,
              width: 400,
              fit: BoxFit.contain, // Adjust BoxFit property here
            ),
          ),
          SizedBox(height: 10),
          Image(
            image: AssetImage('assets/int2.gif'),
            height: 400,
            width: 400,
            fit: BoxFit.contain,
          ),
          SizedBox(height: 10),
          Image(
            image: AssetImage('assets/int3.gif'),
            height: 400,
            width: 400,
            fit: BoxFit.contain,
          ),
          SizedBox(height: 10),
          Image(
            image: AssetImage('assets/int4.gif'),
            height: 400,
            width: 400,
            fit: BoxFit.contain,
          ),
          SizedBox(height: 10),
          Image(
            image: AssetImage('assets/int5.gif'),
            height: 400,
            width: 400,
            fit: BoxFit.contain,
          ),
          SizedBox(height: 10),
          Image(
            image: AssetImage('assets/int6.gif'),
            height: 400,
            width: 400,
            fit: BoxFit.contain,
          ),
          
        ],
      ),
    );
  }
}
