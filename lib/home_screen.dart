import 'package:flutter/material.dart';
import 'package:uetproject/screen_one.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<Widget> listWidget=[

    ScreenOne(),
    Center(child: Text("Text2 ")),
    Center(child: Text("Text3 ")),
     Center(child: Text("Text4 ")),
     Center(child: Text("Text5 ")),
  ];
  int selectedIndex=0; 
  void OnTap(int index){
    setState(() {
      selectedIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar
        (
         type:BottomNavigationBarType.fixed ,
        currentIndex: selectedIndex,

        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.green,
        onTap: OnTap,
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home,),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search"),
        BottomNavigationBarItem(icon: Container(
          color: Colors.red,

            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.add),
            )),label: ""),

         BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Settings"),
         BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Settings"),
      ],


      ),

      body: listWidget.elementAt(selectedIndex),
    );
  }
}
