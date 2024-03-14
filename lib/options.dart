import 'package:flutter/material.dart';
import 'package:stayfit/highintensity.dart';
import 'package:stayfit/lowintensity.dart';
import 'package:stayfit/homepage.dart';
import 'package:stayfit/main.dart';

class optworkout extends StatefulWidget {
  @override
  State<optworkout> createState() => _optworkoutState();
}

class _optworkoutState extends State<optworkout> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Exercise Video Player"),
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
        ),
        backgroundColor: Colors.white24,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                 
                
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(15), // Adjust the radius value as needed
                ),
                child: IconButton(
                  icon: Icon(Icons.directions_run, color: Colors.white,size: 50.0,),
                  onPressed: () {
                    // Add your onPressed logic here
                    Navigator.push(context, 
                    MaterialPageRoute(builder: (context)=>highint()));
                    
                  },
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(15), // Adjust the radius value as needed
                ),
                child: IconButton(
                  icon: Icon(Icons.directions_walk_outlined, color: Colors.white,size:50.0),
                  onPressed: () {
                    // Add your onPressed logic here
                    Navigator.push(context, 
                    MaterialPageRoute(builder: (context)=> low1()));
                    
                  },
                ),
              ),
              Positioned(
            bottom:0.0,
            
            child: FloatingActionButton(
              backgroundColor: Colors.black,
              foregroundColor: Colors.white,
              child: const Icon(Icons.arrow_back),

              onPressed:(){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  app1()),
                );

            }
            ),
            )
            ],
          ),
        ),
      ),
    );
  }
}