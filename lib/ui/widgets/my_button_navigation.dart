import 'package:flutter/material.dart';

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<MyBottomNavigationBar> createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedFontSize: 12,
      unselectedFontSize: 12,
      selectedLabelStyle: Theme.of(context).textTheme.headline5,
      unselectedLabelStyle: Theme.of(context).textTheme.headline5,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: _selectedIndex == 0
                ? const Icon(Icons.send_outlined)
                : const Icon(Icons.send_rounded),
            label: 'My parcels'),
        BottomNavigationBarItem(
            icon: _selectedIndex == 1
                ? const Icon(Icons.watch_later_outlined)
                : const Icon(Icons.watch_later_rounded),
            label: 'My parcels'),
        BottomNavigationBarItem(
            icon: _selectedIndex == 2
                ? const Icon(Icons.account_balance_outlined)
                : const Icon(Icons.account_balance_rounded),
            label: 'My parcels'),
      ],
      currentIndex: _selectedIndex,
      unselectedItemColor: Theme.of(context).unselectedWidgetColor,
      selectedItemColor: Colors.black,
      onTap: _onItemTapped,
    );
  }
}
