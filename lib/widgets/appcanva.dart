import 'dart:async';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_app_model/widgets/screensample/page1.dart';
import 'package:flutter_app_model/widgets/screensample/page2.dart';
import 'package:flutter_app_model/widgets/screensample/page3.dart';
import 'package:flutter_app_model/widgets/screensample/page4.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:typicons_flutter/typicons_flutter.dart';
import 'package:quick_actions/quick_actions.dart';



class AppCanva extends StatefulWidget {
  @override
  _AppCanvaState createState() => _AppCanvaState();
}

class _AppCanvaState extends State<AppCanva> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int _selectedIndex = 0;
  List<Widget> _pages = [
    page1(),
    page2(),
    //Center(child: Text('New Appointment')),
    page3(),
    page4(),
  ];



  _navigate(Widget screen) {
    Navigator.of(context).push(MaterialPageRoute(builder: (_) => screen));
  }

  String shortcut = "no action set";

  @override
  void initState() {
    super.initState();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        key: _scaffoldKey,
        body: _pages[_selectedIndex],
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            boxShadow: [
              BoxShadow(
                blurRadius: 20,
                color: Colors.black.withOpacity(.2),
              ),
            ],
          ),
          child: SafeArea(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8),
              child: GNav(
                curve: Curves.easeOutExpo,
                rippleColor: Colors.grey[300],
                hoverColor: Colors.grey[100],
                haptic: true,
                tabBorderRadius: 20,
                gap: 5,
                activeColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                duration: Duration(milliseconds: 400),
                tabBackgroundColor: Colors.blue.withOpacity(0.7),
                textStyle: GoogleFonts.lato(
                  color: Colors.white,
                ),
                tabs: [
                  GButton(
                    iconSize: _selectedIndex != 0 ? 28 : 25,
                    icon: _selectedIndex == 0
                        ? FlutterIcons.home_fou
                        : FlutterIcons.home_variant_outline_mco,
                    text: 'page1',
                  ),
                  GButton(
                    icon: FlutterIcons.search1_ant,
                    text: 'Page2',
                  ),
                  GButton(
                    iconSize: 28,
                    icon: _selectedIndex == 2
                        ? Typicons.calendar
                        : Typicons.calendar_outline,
                    text: 'Page3',
                  ),
                  GButton(
                    iconSize: 29,
                    icon: _selectedIndex == 3
                        ? Typicons.user
                        : Typicons.user_outline,
                    text: 'Page4',
                  ),
                ],
                selectedIndex: _selectedIndex,
                onTabChange: _onItemTapped,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
