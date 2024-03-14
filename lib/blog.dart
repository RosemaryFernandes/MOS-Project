import 'package:flutter/material.dart';
import 'package:stayfit/homepage.dart';


class Blog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Weight Loss Blogs',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: BlogPage(),
    );
  }
}

class BlogPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Weight Loss Blogs',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.grey[300], // Background color set to grey
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          BlogCard(
            imagePath: 'assets/blog1.png',
            personName: 'Adnan Sami',
            description:
                'Earlier he weighed 230 kgs but then he lost around 155 kgs and is currently 75 kgs.He sstarted living a healthy lifestyle by quiting alohol and junk food. He followed a strict diet plan and regular walks per day. His diet mainly consists of preotein rich foods.',
          ),
          SizedBox(height: 16.0),
          BlogCard(
            imagePath: 'assets/blog2.png',
            personName: 'Chanchal Malhotra',
            description:
                'From weighing over 100kg to dropping to 65 and then putting all the weight back again, the 4th time, she decided NOT THIS TIME.! It will be slow but permanent..! After two years and minus 50kg, she says \"I’m now focused on consistently disciplined (FCD), and exercise has become a part of my daily routine\".',
          ),
          SizedBox(height: 16.0),
          BlogCard(
            imagePath: 'assets/blog3.png',
            personName: 'Sara Ali Khan',
            description:
                'Before she made it big in Bollywood, Sara Ali Khan underwent an extensive physical transformation. The actress had previously shared that she faced a lot of struggle to lose weight because of PCOD and that she weighed 96 kgs during her university days. However, Sara was keen to become an actress and managed to shed it all in a year-and-half.',
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
                  MaterialPageRoute(builder: (context) =>  HomePage()),
                );

            }
            ),
            )
        ],
      ),
    );
  }
}

class BlogCard extends StatelessWidget {
  final String imagePath;
  final String personName;
  final String description;

  const BlogCard({
    Key? key,
    required this.imagePath,
    required this.personName,
    required this.description,
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
              width: 400,
              height: 300, // Adjusted height here
              fit: BoxFit.cover,
            ),
            SizedBox(width: 16.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    personName,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    description,
                    style: TextStyle(
                      fontSize: 16.0,
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