import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class FBottomBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const FBottomBar({Key? key, required this.currentIndex, required this.onTap})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: currentIndex,
      onTap: onTap,
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
    );
  }
}
