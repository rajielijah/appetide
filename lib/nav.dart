import 'package:appetide/color.dart';
import 'package:appetide/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class MyStatefulWidget extends StatefulWidget {
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  // static const color = const Color(0xFF184C35);
  static const color  = kPrimary;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
  HomePage(),
  HomePage(),
  HomePage(),
  HomePage(),
  HomePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


@override
  Widget build(BuildContext context) {
    final String assetName = 'images/vector1.svg';
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Container(
          color: Colors.white,
          height:100,
          child: ClipRRect(
            
            borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0), bottomRight: Radius.circular(30.0), bottomLeft: Radius.circular(30.0),),
            child: BottomNavigationBar(
              iconSize: 60,
              items: const <BottomNavigationBarItem>[
                 BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('images/vect.png')),
                  label: 'Explore',
                  backgroundColor: Colors.black,
                ),
                BottomNavigationBarItem(
                  label: 'Portfolio',
                  backgroundColor: color,
                  icon: ImageIcon(AssetImage('images/Group42.png'))
                ),
                BottomNavigationBarItem(
                 icon: ImageIcon(AssetImage('images/bid1.png')),
                 label: 'Market',
                 backgroundColor: color,
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('images/vecto.png')),
                  label: 'Profile',
                  backgroundColor: color,
                ),
                  BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('images/vector3.png')),
                  label: 'Explore',
                  backgroundColor: Colors.black,
                ),
              ],
              type: BottomNavigationBarType.fixed,
              backgroundColor: kPrimary[10],
              currentIndex: _selectedIndex,
              selectedItemColor: kPrimary[20],
              unselectedItemColor: Colors.black,
              showUnselectedLabels: false,
              
              onTap: _onItemTapped,
              elevation: 10,
            ),
          ),
        ),
      ),
    );
  }
}