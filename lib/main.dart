import 'package:flutter/material.dart';
import 'package:stayfit/homepage.dart';
import 'package:stayfit/recipe.dart';
import 'package:stayfit/blog.dart';
import 'package:stayfit/splash.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: splash_screen(),
  ));
}

class app1 extends StatefulWidget {
  const app1({super.key});

  @override
  State<app1> createState() => _app1();
}

class _app1 extends State<app1> {
  int myIndex=0;

  List<Widget> widgetList=[
    HomePage(),//Text('Home',style:TextStyle(fontSize: 40)),
    Blog(),
    RecipePage()

  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
      body: Center(
        child: widgetList[myIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        type:BottomNavigationBarType.shifting,
        onTap:(index){
          setState(() {
            myIndex=index;
          });
        },
        currentIndex: myIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.description),
            label: 'Blogs',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_dining),
            label: 'Recipe',
          ),
        ],
      ),
    )
    );
  }
}

