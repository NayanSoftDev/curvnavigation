
import 'package:curvnavigation/a.dart';
import 'package:curvnavigation/b.dart';
import 'package:curvnavigation/c.dart';
import 'package:curvnavigation/d.dart';
import 'package:flutter/material.dart';



void main()=>runApp(MaterialApp(home: BottomNavBar()));

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  _BottomNavBarState createState()=>_BottomNavBarState();
}
class _BottomNavBarState extends State<BottomNavBar> {

  @override
  Widget build(BuildContext context) {
    var _page= 0;
    final pages =[A(),B(),C(),D(),];
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
          index: 0,
          color: Colors.white,
          buttonBackgroundColor: Colors.white,
          backgroundColor: Colors.blue,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration( milliseconds: 600),
          onTap: (index){
            setState(() {
              _page=index;

            });
          },
          items:[
            Icon(Icons.access_alarm),
            Icon(Icons.ac_unit),
            Icon(Icons.accessibility),
            Icon(Icons.add_call),
          ]),
      body:pages[_page],
    );
  }
  