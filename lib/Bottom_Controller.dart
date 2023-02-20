import 'package:flutter/material.dart';
import 'package:intern/BottomControllerfile/Home.dart';
import 'BottomControllerfile/Record.dart';
import 'BottomControllerfile/Saved.dart';
import 'BottomControllerfile/Searcch.dart';
import 'BottomControllerfile/Settings.dart';

class BottomNavController extends StatefulWidget {
  const BottomNavController({Key? key}) : super(key: key);

  @override
  _BottomNavControllerState createState() => _BottomNavControllerState();
}

class _BottomNavControllerState extends State<BottomNavController> {
  int _cuttentindex = 0;
  final _pages = [Home(), const Search(), const Record(), const Saved(),const Settings()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.black54,
        showUnselectedLabels: true,
        currentIndex: _cuttentindex,
        selectedLabelStyle: const TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
        items:  [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.video_call_rounded), label: "Record"),
          BottomNavigationBarItem(icon: Icon(Icons.save), label: "Saved"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),
        ],
        onTap: (index) {
          setState(() {
            _cuttentindex = index;
          });
        },
      ),
      body: _pages[_cuttentindex],
    );
  }
}
