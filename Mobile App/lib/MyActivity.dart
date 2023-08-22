import 'package:flutter/material.dart';

class MyActivity extends StatefulWidget {
  const MyActivity({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyActivity> createState() => _MyActivityState();
}

class _MyActivityState extends State<MyActivity> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: const Color(0xFF8F9E91),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(height: 70),
                  Container(
                    width: double.infinity,
                    child: const Text(
                      "Activity Type",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 100),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 320,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text("Walking", style: TextStyle(fontSize: 18)),
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        width: 320,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text("Running", style: TextStyle(fontSize: 18)),
                        ),
                      ),
                      SizedBox(height: 10),
                      // Yoga button
                      Container(
                        width: 320,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text("Yoga", style: TextStyle(fontSize: 18)),
                        ),
                      ),
                      SizedBox(height: 10),
                      // Sports button
                      Container(
                        width: 320,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text("Sports", style: TextStyle(fontSize: 18)),
                        ),
                      ),
                      SizedBox(height: 10),
                      // Aerobic button
                      Container(
                        width: 320,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text("Aerobic", style: TextStyle(fontSize: 18)),
                        ),
                      ),
                      SizedBox(height: 10),
                      // Jumba button
                      Container(
                        width: 320,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text("Jumba", style: TextStyle(fontSize: 18)),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: 'Community',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
