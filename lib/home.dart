import 'package:flutter/material.dart';
import 'card1.dart';
import 'card2.dart';
import 'card3.dart';

// 1
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // TODO: Add state variables and functions
  // 7
  int _selectedIndex = 2;

// 8
  static List<Widget> pages = <Widget>[
    // TODO: Replace with Card1
    ///Container(color: Colors.red),
    const Card1(),
    // TODO: Replace with Card2
    ///Container(color: Colors.white),
    const Card2(),
    // TODO: Replace with Card3
    ///Container(color: Colors.blue)
    const Card3(),
  ];

// 9
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true, //CENTRALIZA O TITULO NA BARRA SUPERIOR O APLICATIVO
        title: Text(
          'Fooderlich',
          // 2
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      // TODO: Show selected tab
      body: pages[_selectedIndex],
      /*body: Center(
          child: Text('Let\'s get cooking 👩‍🍳',
              // 3
              style: Theme.of(context).textTheme.headline1)),*/
      // TODO: Add bottom navigation bar
      // 4
      bottomNavigationBar: BottomNavigationBar(
        // 5
        selectedItemColor: Theme.of(context).textSelectionTheme.selectionColor,
        // TODO: Set selected tab bar
        // 10
        currentIndex: _selectedIndex,
        // 11
        onTap: _onItemTapped,

        // 6
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card2',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card3',
          ),
        ],
      ),
    );
  }
}
