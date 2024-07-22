import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:myapp/views/buyers/nav_screens/account_screen.dart';
import 'package:myapp/views/buyers/nav_screens/cart_screen.dart';
import 'package:myapp/views/buyers/nav_screens/category_screen.dart';
import 'package:myapp/views/buyers/nav_screens/home_screen.dart';
import 'package:myapp/views/buyers/nav_screens/search_screen.dart';
import 'package:myapp/views/buyers/nav_screens/store_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _pageIndex = 0;

  List<Widget> _pages = [
    HomeScreen(),
    CategoryScreen(),
    StoreScreen(),
    CartScreen(),
    SearchScreen(),
    AccountScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _pageIndex,
          onTap: (value) {
            setState(() {
              _pageIndex = value;
            });
          },
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.yellow.shade900,
          items: [
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/explore.svg'),
              label: 'Categories',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/shop.svg'),
              label: 'Store',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/cart.svg'),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/search.svg'),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/account.svg'),
              label: 'Account',
            ),
          ],
        ),
        body: _pages[_pageIndex],
    );
  }
}
