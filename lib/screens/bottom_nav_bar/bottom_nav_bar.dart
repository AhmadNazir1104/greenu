import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:greenu/utils/app_color.dart';

class BotomnavbarScreen extends StatefulWidget {
  const BotomnavbarScreen({super.key});

  @override
  State<BotomnavbarScreen> createState() => _BotomnavbarScreenState();
}

class _BotomnavbarScreenState extends State<BotomnavbarScreen>
    with TickerProviderStateMixin {
  var _selectedTab = 0;

  void _handleIndexChanged(int i) {
    setState(() {
      _selectedTab = i;
    });
  }

  List _pages = [
    Center(
      child: Text("Home"),
    ),
    Center(
      child: Text("About"),
    ),
    Center(
      child: Text("Products"),
    ),
    Center(
      child: Text("Contact"),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: _pages[_selectedTab],
      bottomNavigationBar: DotNavigationBar(
        // margin: EdgeInsets.only(top: 10),
        currentIndex: _selectedTab,
        dotIndicatorColor: Colors.black,
        unselectedItemColor: Colors.grey[300],
        splashBorderRadius: 50,
        curve: Curves.linear,
        itemPadding: EdgeInsets.all(0),
        marginR: EdgeInsets.all(0),
        paddingR: EdgeInsets.all(5),
        // enableFloatingNavBar: false,
        onTap: _handleIndexChanged,
        items: [
          /// Home
          DotNavigationBarItem(
            icon: Icon(Icons.home),
            selectedColor:AppColors.primarylimeCardColor,
          ),

          /// Likes
          DotNavigationBarItem(
            icon: Icon(Icons.favorite),
            selectedColor:AppColors.primarylimeCardColor,
          ),

          /// Search
          DotNavigationBarItem(
            icon: Icon(Icons.search),
            selectedColor:AppColors.primarylimeCardColor,
          ),

          /// Profile
          DotNavigationBarItem(
            icon: Icon(Icons.person),
            selectedColor:AppColors.primarylimeCardColor,
          ),
        ],
      ),
    );
  }
}

enum _SelectedTab { home, favorite, search, person }
