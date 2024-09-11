import 'package:et_lab/main.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Image(image: AssetImage('lib/logo.jpeg')),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('USERNAME : '),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(1),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('PASSWORD : '),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(1),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
           const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ScreenProfile()),
                );
              },
              child: const Text(
                'Login',
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
            ),
            TextButton(
                onPressed: () {},
                child: const Text(
                  "Forgot Password?",
                  style: TextStyle(color: Colors.indigo),
                )),
          ],
        ),
      ),
    );
  }
}