import 'package:et_lab/home_screen.dart';
import 'package:et_lab/students.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: ScreenProfile());
  }
}

class ScreenProfile extends StatelessWidget {
  const ScreenProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(10.0), 
        child: AppBar(
          backgroundColor: const Color.fromARGB(255, 225, 60, 60),
        ),
      ),
      // App Bar ends here

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(bottom: 50),
              child: Image(image: AssetImage('lib/logo.jpeg')),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(5),
              ),
              padding: const EdgeInsets.all(30),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.fromLTRB(12, 80, 20, 5),
                        child: Text(
                          'Username',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 80, 4, 5),
                          child: TextFormField(
                            decoration: const InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(0)))),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.fromLTRB(12, 5, 20, 10),
                        child: Text(
                          'Password',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 5, 5, 8),
                          child: TextFormField(
                            maxLines: 1,
                            decoration: const InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(0)))),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  const Padding(padding: EdgeInsets.only(top: 20)),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ScreenStudentList()),
                      );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 8, 158, 63),
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2),
                        ),
                        fixedSize: const Size(100, 50),
                      ),
                      child: const Text('Login'),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                    },
                    child: const Text(
                      "Forgot Password?",
                      style: TextStyle(color: Colors.indigo),
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
