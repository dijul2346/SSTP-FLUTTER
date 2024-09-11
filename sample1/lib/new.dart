import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
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
      appBar:PreferredSize(
  preferredSize: Size.fromHeight(5.0), // Set your desired height here
  child: 
      AppBar(
      ),),
      // App Bar ends here

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Padding(padding: EdgeInsets.fromLTRB(20, 20, 20, 50),
            child: Image(image: AssetImage('lib/logo.jpeg'))),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text('Username',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold)),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration:const InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(0)))),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.fromLTRB(8, 10, 30, 10),
                  child: Text('Password',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold)),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      maxLines: 1,
                      decoration:const InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(0)))),
                    ),
                  ),
                ),
              ],
            ),
            Padding(padding: const EdgeInsets.only(top: 20)),
            Center(
              child: ElevatedButton(
                onPressed: () {
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 8, 158, 63),
                  foregroundColor: Colors.white,
                  shape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular(0),),fixedSize: Size(100, 50)
                ),
                child: Text('Login'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
