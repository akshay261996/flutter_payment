import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter_sample/Screen/Home/HomeScreen.dart';
import 'package:flutter_sample/Screen/Merchant/MerchantScreen.dart';
import 'package:flutter_sample/Screen/Admin/AdminScreen.dart';
import 'package:flutter_sample/Screen/Dashboard/Dashboard.dart';
import '../GlobalConst/GlobalConst.dart';

class Tabbar extends StatefulWidget {
  const Tabbar({super.key});

  @override
  State<Tabbar> createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> {
  int _selectedIndex = 0;

  PageController _pageController = PageController();
  List<Widget> _screens = [HomeScreen(), MerchantScreen(), AdminScreen()];

  void void_onPageChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onItemTapped(int selectedIndex) {
    _pageController.jumpToPage(selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Center(
      //     child: const Text(
      //       'HOME',
      //     ),
      //   ),
      // ),
      // body: Center(
      //     child: Text("Welcome to Dashboard Page",
      //         style: TextStyle(color: Colors.black, fontSize: 30))),
      // backgroundColor: Colors.blue,

      // body: Center(
      //     //child: _widgetOptions.elementAt(_selectedIndex),
      //     ),
      body: PageView(
        controller: _pageController,
        children: _screens,
        onPageChanged: void_onPageChanged,
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: (Home),
              backgroundColor: Colors.green),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_business_rounded),
              label: (Merchant),
              backgroundColor: Colors.yellow),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: (Admin),
            backgroundColor: Colors.blue,
          ),
        ],
        // type: BottomNavigationBarType.shifting,
        //currentIndex: _selectedIndex,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.amberAccent,

        // iconSize: 40,
        // onTap: void_onPageChanged,
        //elevation: 5
      ),
    );
  }
}
