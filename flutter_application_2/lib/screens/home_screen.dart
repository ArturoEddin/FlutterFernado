import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int CurrentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "App Flutter $CurrentPage",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.cyanAccent,
      ),
      body: PageView(
        children: [
          
          CustomScreen(color: Colors.cyanAccent),
          CustomScreen(color: Colors.blueAccent),
          CustomScreen(color: Colors.indigoAccent),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: CurrentPage,
          onTap: (index) {
            CurrentPage = index;
            setState(() {});
          },
          backgroundColor: Colors.cyanAccent,
          items: [
          
            BottomNavigationBarItem( icon: Icon(Icons.verified_outlined), label: "Verified"),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),
          ]),
    );
  }
}

class CustomScreen extends StatelessWidget {
  final Color color;

  const CustomScreen({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Center(
        child: Text(
          "ENFERMERIA",
        ),
      ),
      color: color,
    );
  }
}
