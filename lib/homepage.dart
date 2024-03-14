import 'package:flutter/material.dart';
import 'package:stayfit/bmi.dart';
import 'package:stayfit/options.dart';
import 'package:stayfit/splash.dart';



class Homepage1 extends StatefulWidget {
  @override
  State<Homepage1> createState() => _Homepage1State();
}

class _Homepage1State extends State<Homepage1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Home Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.black,
          titleTextStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.w100),
        ),
        textTheme: TextTheme(
          headline6: TextStyle(color: Colors.black),
          subtitle1: TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
      home: const splash_screen(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int waterCount = 0;
  int mealCount = 0;

  void incrementWaterCount() {
    setState(() {
      if (waterCount < 7) {
        waterCount++;
      } else {
        waterCount = 1;
      }
    });
  }

  void incrementMealCount() {
    setState(() {
      if (mealCount < 6) {
        mealCount++;
      } else {
        mealCount = 1;
      }
    });
  }

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: Text('Home Page'),
      ),
      backgroundColor: Color.fromARGB(255, 75, 74, 74),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BMI()),
              );
            },
            style: ElevatedButton.styleFrom(
              shadowColor: Color.fromARGB(255, 33, 32, 33),
              padding: EdgeInsets.symmetric(vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: Text('BMI Calculator'),
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 212, 212, 212),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: GestureDetector(
                    onTap: () {
                      incrementWaterCount();
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.local_drink,
                          size: 50,
                          color: Colors.blue,
                        ),
                        SizedBox(height: 10),
                        Text(
                          '$waterCount/7 glasses',
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 212, 212, 212),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: GestureDetector(
                    onTap: () {
                      incrementMealCount();
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.fastfood,
                          size: 50,
                          color: Colors.orange,
                        ),
                        SizedBox(height: 10),
                        Text(
                          '$mealCount/6 meals',
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Navigate to video player page
              Navigator.push(context, 
              MaterialPageRoute(builder: (context)=>optworkout()));
            },
            style: ElevatedButton.styleFrom(
              shadowColor: Color.fromARGB(255, 41, 41, 42),
              padding: EdgeInsets.symmetric(vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: Container(
              height: 200, // Increased height
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage('assets/vidplayer.png'), // Background image path
                  fit: BoxFit.cover,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.directions_run,
                        size: 30,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Exercise it out',
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
