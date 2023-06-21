import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pet/home.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedIndex = 0;
  void _navigateBottomNavBar(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  // user
  // final currentUser = FirebaseAuth.instance.currentUser!;
  // sign user out
   void signOut(){
    // FirebaseAuth.instance.signOut();
  }

  final List<Widget> _children = [
    Home(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomNavBar,
        type: BottomNavigationBarType.fixed,
        items:const [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.add),label: "Add"),
        BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined),label: "Profile"),
        BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search"),
        ],
      ),
      );
  }
}
