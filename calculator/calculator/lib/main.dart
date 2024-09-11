
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}
  

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Container(
            height: 270,
            width: MediaQuery.of(context).size.width,
            color: Colors.black,
            child: const Padding(
              padding: EdgeInsets.fromLTRB(300, 110, 0, 0),
              child: Text(
                '0',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 100),
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[500], // Background color
                    shape: const CircleBorder(), // Make the button circular
                    padding: const EdgeInsets.all(
                        27), // Adjust padding to control button size
                  ),
                  child: const Text(
                    'C',
                    style: TextStyle(fontSize: 40, color: Colors.black),
                  ),
                ),
              ),

              const SizedBox(
                width: 10,
              ),

              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey[500], // Background color
                  shape: const CircleBorder(), // Make the button circular
                  padding: const EdgeInsets.all(
                      27), // Adjust padding to control button size
                ),
                child: const Text(
                  '+/-',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),

              const SizedBox(
                width: 10,
              ),

              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey[500], // Background color
                  shape: const CircleBorder(), // Make the button circular
                  padding: const EdgeInsets.all(
                      25), // Adjust padding to control button size
                ),
                child: const Text(
                  '%',
                  style: TextStyle(fontSize: 40, color: Colors.black),
                ),
              ),

              const SizedBox(
                width: 10,
              ),

              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange, // Background color
                  shape: const CircleBorder(), // Make the button circular
                  padding: const EdgeInsets.all(
                      27), // Adjust padding to control button size
                ),
                child: const Text(
                  '÷',
                  style: TextStyle(fontSize: 40, color: Colors.white),
                ),
              )
            ],
          ),

          // row 2

         Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF505050), // Background color
                    shape: const CircleBorder(), // Make the button circular
                    padding: const EdgeInsets.all(
                        27), // Adjust padding to control button size
                  ),
                  child: const Text(
                    '7',
                    style: TextStyle(fontSize: 40, color: Colors.white),
                  ),
                ),
              ),

              const SizedBox(
                width: 12,
              ),

              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF505050), // Background color
                  shape: const CircleBorder(), // Make the button circular
                  padding: const EdgeInsets.all(
                      27), // Adjust padding to control button size
                ),
                child: const Text(
                  '8',
                  style: TextStyle(fontSize: 40, color: Colors.white),
                ),
              ),

              const SizedBox(
                width: 12,
              ),

              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF505050), // Background color
                  shape: const CircleBorder(), // Make the button circular
                  padding: const EdgeInsets.all(
                      25), // Adjust padding to control button size
                ),
                child: const Text(
                  '9',
                  style: TextStyle(fontSize: 40, color: Colors.white),
                ),
              ),

              const SizedBox(
                width: 12,
              ),

              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange, // Background color
                  shape: const CircleBorder(), // Make the button circular
                  padding: const EdgeInsets.all(
                      25), // Adjust padding to control button size
                ),
                child: const Text(
                  'X',
                  style: TextStyle(fontSize: 40, color: Colors.white),
                ),
              )
            ],
          ),

          //row 3

          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF505050), // Background color
                    shape: const CircleBorder(), // Make the button circular
                    padding: const EdgeInsets.all(
                        27), // Adjust padding to control button size
                  ),
                  child: const Text(
                    '4',
                    style: TextStyle(fontSize: 40, color: Colors.white),
                  ),
                ),
              ),

              const SizedBox(
                width: 12,
              ),

              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF505050), // Background color
                  shape: const CircleBorder(), // Make the button circular
                  padding: const EdgeInsets.all(
                      27), // Adjust padding to control button size
                ),
                child: const Text(
                  '5',
                  style: TextStyle(fontSize: 40, color: Colors.white),
                ),
              ),

              const SizedBox(
                width: 12,
              ),

              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF505050), // Background color
                  shape: const CircleBorder(), // Make the button circular
                  padding: const EdgeInsets.all(
                      25), // Adjust padding to control button size
                ),
                child: const Text(
                  '6',
                  style: TextStyle(fontSize: 40, color: Colors.white),
                ),
              ),

              const SizedBox(
                width: 12,
              ),

              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange, // Background color
                  shape: const CircleBorder(), // Make the button circular
                  padding: const EdgeInsets.all(
                      28), // Adjust padding to control button size
                ),
                child: const Text(
                  '-',
                  style: TextStyle(fontSize: 40, color: Colors.white),
                ),
              )
            ],
          ),

          //Row 4

          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF505050), // Background color
                    shape: const CircleBorder(), // Make the button circular
                    padding: const EdgeInsets.all(
                        27), // Adjust padding to control button size
                  ),
                  child: const Text(
                    '1',
                    style: TextStyle(fontSize: 40, color: Colors.white),
                  ),
                ),
              ),

              const SizedBox(
                width: 12,
              ),

              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF505050), // Background color
                  shape: const CircleBorder(), // Make the button circular
                  padding: const EdgeInsets.all(
                      27), // Adjust padding to control button size
                ),
                child: const Text(
                  '2',
                  style: TextStyle(fontSize: 40, color: Colors.white),
                ),
              ),

              const SizedBox(
                width: 12,
              ),

              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF505050), // Background color
                  shape: const CircleBorder(), // Make the button circular
                  padding: const EdgeInsets.all(
                      25), // Adjust padding to control button size
                ),
                child: const Text(
                  '3',
                  style: TextStyle(fontSize: 40, color: Colors.white),
                ),
              ),

              const SizedBox(
                width: 12,
              ),

              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange, // Background color
                  shape: const CircleBorder(), // Make the button circular
                  padding: const EdgeInsets.all(
                      26), // Adjust padding to control button size
                ),
                child: const Text(
                  '+',
                  style: TextStyle(fontSize: 40, color: Colors.white),
                ),
              )
            ],
          ),

          //fifth row

          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
      backgroundColor: const Color(0xFF505050), // Background color
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50), // Adjust the border radius as needed
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 7, // Adjust vertical padding to control height
        horizontal: 73, // Adjust horizontal padding to control width
      ),
    ),
    child: const Text(
      '0',
      style: TextStyle(fontSize: 40, color: Colors.white),
    ),
                ),
              ),

              const SizedBox(
                width: 12,
              ),

              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF505050), // Background color
                  shape: const CircleBorder(), // Make the button circular
                  padding: const EdgeInsets.all(
                      28), // Adjust padding to control button size
                ),
                child: const Text(
                  '.',
                  style: TextStyle(fontSize: 50, color: Colors.white),
                ),
              ),

              const SizedBox(
                width: 12,
              ),

              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange, // Background color
                  shape: const CircleBorder(), // Make the button circular
                  padding: const EdgeInsets.all(
                      28), // Adjust padding to control button size
                ),
                child: const Text(
                  '=',
                  style: TextStyle(fontSize: 40, color: Colors.white),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
  