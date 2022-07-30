import 'package:electros/utils/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomAppNavigation extends StatefulWidget {
  const BottomAppNavigation({Key? key}) : super(key: key);

  @override
  State<BottomAppNavigation> createState() => _BottomAppNavigationState();
}

class _BottomAppNavigationState extends State<BottomAppNavigation> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: CustomTheme.deepColor,
      selectedLabelStyle: const TextStyle(color: CustomTheme.deepColor),
      items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.home),
          label: "Home"),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.bookmark),
          label: "Saved"),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.shopping_cart),
          label: "Cart"),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.bubble_left_bubble_right),
          label: "Messages"),
      ]
      );
  }
}
