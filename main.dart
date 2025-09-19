import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Profile App',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Profile'),
        centerTitle: true,
        backgroundColor: Colors.indigo,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  width: 4,
                  color: Colors.indigoAccent,
                ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blueAccent,
                      blurRadius: 30,
                      offset: Offset(0, 5),
                    ),
                  ],
              ),
              child: ClipOval(
                child: Image.network
                  ('https://lh3.googleusercontent.com/a/ACg8ocLVVFsMbFYmsJm584BS-5OyyLhZ_HRwi7JVRDjlO3vMtZPM_y4=s288-c-no',
                  width: 200,
                  height: 200,
                  fit: BoxFit.cover,
                ),
                ),
              ),
            SizedBox(height: 20,),
            Text('Ruzell M. Garcia',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.indigo[800],
              ),
            ),
            SizedBox(height: 20,),
            Text('BACHELOR OF SCIENCE IN INFORMATION TECHNOLOGY',
            style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Colors.indigo[800],
            ),
            ),
            SizedBox(height: 20,),
            Text('Im Ruzell M. Garcia 20 years old, Live at 7th Ave Caloocan City, My hobbies are, playing online games, listening to music and make other people to be happy. I have 3 siblings, 3 Women and i am the only Man. I want to be a professional IT someday and make a job that earn more money.',
            style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            color: Colors.indigo[800],
            ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}