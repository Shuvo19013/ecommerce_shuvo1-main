import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import '../../../common/widgets/appbar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    Container(color: const Color.fromARGB(255, 224, 19, 19)),
    Container(color: Colors.blue),
    Container(color: Colors.green),
    Container(color: Colors.orange),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FAppBar(title: "Mega Shop", backButton: true),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Iconsax.home_outline),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.heart_outline),
            label: "Wishlist",
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.shopping_bag_outline),
            label: "Order",
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.user_add_bold),
            label: "Accounts",
          ),
        ],
      ),
    );
  }
}
