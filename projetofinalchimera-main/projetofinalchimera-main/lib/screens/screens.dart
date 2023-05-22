import 'package:chimera_app/screens/cart_screen.dart';
import 'package:chimera_app/screens/favorite_screen.dart';
import 'package:chimera_app/screens/home_screen.dart';
import 'package:chimera_app/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

class Screens extends StatefulWidget {
  @override
  State<Screens> createState() => _ScreensState();
}

class _ScreensState extends State<Screens> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    CartScreen(),
    FavoriteScreen(),
    LoginScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF353535),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(0.1),
            ),
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
            child: GNav(
              rippleColor: Color.fromARGB(255, 255, 255, 255),
              hoverColor: Color.fromARGB(255, 255, 255, 255),
              gap: 8,
              activeColor: Color.fromARGB(255, 255, 255, 255),
              iconSize: 30,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: Duration(milliseconds: 400),
              tabBackgroundColor: Colors.black,
              color: Colors.black,
              tabs: [
                GButton(icon: LineIcons.home, text: 'Início'),
                GButton(icon: LineIcons.shoppingBag, text: 'Carrinho'),
                GButton(icon: LineIcons.heart, text: 'Favoritos'),
                GButton(icon: LineIcons.user, text: 'Conta'),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {});
                _selectedIndex = index;
              },
            ),
          ),
        ),
      ),
    );
  }
}
