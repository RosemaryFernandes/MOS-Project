import 'package:flutter/material.dart';
import 'package:stayfit/homepage.dart';
import 'package:stayfit/main.dart';
import 'package:url_launcher/url_launcher.dart';

class RecipePage extends StatefulWidget {
  @override
  State<RecipePage> createState() => _RecipePageState();
}

class _RecipePageState extends State<RecipePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Healthy Recipe Blogs',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.grey[300], // Background color set to grey
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          GestureDetector(
            onTap: () {
              const String url = "https://www.twopeasandtheirpod.com/broccoli-mac-and-cheese/";
              launchUrl(Uri.parse(url));
            },
            child: RecipeCard(
              imagePath: 'assets/rec1.png',
              recipeName: 'Broccoli Mac and Cheese',
            ),
          ),
          SizedBox(height: 16.0),
          GestureDetector(
            onTap: () {
              const String url = "https://www.ambitiouskitchen.com/healthy-enchilada-recipes/";
              launchUrl(Uri.parse(url));
            },
            child: RecipeCard(
              imagePath: 'assets/rec3.png',
              recipeName: 'Healthy Enchilada Recipe',
            ),
          ),
          SizedBox(height: 16.0),
          GestureDetector(
            onTap: () {
              const String url = "https://thedefineddish.com/chicken-and-rice-taco-skillet/";
              launchUrl(Uri.parse(url));
            },
            child: RecipeCard(
              imagePath: 'assets/rec2.png',
              recipeName: 'Chicken and rice taco skillet',
            ),
          ),
           SizedBox(height: 16.0),
          Positioned(
            bottom: 0.0,
            child: FloatingActionButton(
              backgroundColor: Colors.black,
              foregroundColor: Colors.white,
              child: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => app1()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class RecipeCard extends StatelessWidget {
  final String imagePath;
  final String recipeName;

  const RecipeCard({
    Key? key,
    required this.imagePath,
    required this.recipeName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              imagePath,
              width: 150, // Adjusted width
              height: 150, // Adjusted height
              fit: BoxFit.cover,
            ),
            SizedBox(width: 16.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    recipeName,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
