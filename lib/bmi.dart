import 'package:flutter/material.dart';
import 'package:stayfit/homepage.dart';
import 'package:stayfit/main.dart';

class BMI extends StatefulWidget {
  const BMI({super.key});

  @override
  State<BMI> createState() => _BMI();
}

class _BMI extends State<BMI> {
  final weight = TextEditingController();
  final height = TextEditingController();
  final result = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'BMI CALCULATOR',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.black,
          centerTitle: true,
        ),
        body: Container(
          color: Colors.grey, // Grey background color
          child: Center(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  child: TextField(
                    controller: weight,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Enter your weight(kgs)",
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  child: TextField(
                    controller: height,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Enter your height(cms)",
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  child: TextField(
                    readOnly: true,
                    controller: result,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Your BMI",
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  child: SizedBox(
                    width: double.infinity,
                    child: GestureDetector(
                      onTap: () {
                        double _weight = double.tryParse(weight.text) ?? 0;
                        double _height = double.tryParse(height.text) ?? 0;

                        _height /= 100;

                        double bmi = _weight / ((_height) * (_height));
                        result.text =
                            bmi.toStringAsPrecision(5); //total 5 digits rounded off
                      },
                      child: const FloatingActionButton(
                        backgroundColor: Color.fromARGB(255, 51, 51, 50),
                        onPressed: null,
                        child: Text(
                          "calculate BMI",
                          style: TextStyle(color: Color.fromARGB(255, 228, 227, 225), fontSize: 20),
                        ),
                      ),
                    ),
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
      ),
    );
  }
}