import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:theog/pages/HomeScreenWidget.dart';
import 'package:theog/pages/SearchScreenWidget.dart';
import 'package:theog/pages/ProfileScreenWidget.dart';

class HomeScreen extends StatefulWidget {
  final String hphoneNumber;
  final String hposition;
  final String hparty;
  final String hfullname;
  final String hlokhsabha;

  const HomeScreen({
    Key? key,
    required this.hphoneNumber,
    required this.hposition,
    required this.hfullname,
    required this.hparty,
    required this.hlokhsabha,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  late List<Widget> _widgetOptions;

  static List<String> images = [
    'assets/home/image1.jpg',
    'assets/home/image2.jpg',
    'assets/home/image3.jpg',
  ];

  @override
  void initState() {
    super.initState();

    _widgetOptions = [
      HomeScreenWidget(
        backgroundImage: images[_selectedIndex],
      ),
      SearchScreen(),
      ProfileScreen(
        fullname: widget.hfullname,
        position: widget.hposition,
        party: widget.hparty,
        phoneNumber: widget.hphoneNumber,
        lokhsabha: widget.hlokhsabha,
      ),
    ];
  }

  @override
  void dispose() {
    // Cleanup code here if needed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromRGBO(18, 18, 18, 0.7),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              images[_selectedIndex],
              fit: BoxFit.cover,
            ),
          ),
          Column(
            children: [
              Expanded(
                child: _widgetOptions.elementAt(_selectedIndex),
              ),
              GNav(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                activeColor: Colors.white,
                backgroundColor: Color.fromRGBO(12, 12, 12, 0.9),
                color: Colors.white,
                tabBackgroundColor: Colors.grey[700]!,
                tabMargin: EdgeInsets.all(10),
                gap: MediaQuery.of(context).size.width * 0.01,
                selectedIndex: 0,
                onTabChange: (value) {
                  setState(() {
                    _selectedIndex = value;
                  });
                },
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.05,
                  vertical: MediaQuery.of(context).size.height * 0.02,
                ),
                iconSize: 24,
                tabs: [
                  GButton(
                    icon: Icons.home,
                    text: 'Home',
                  ),
                  GButton(
                    icon: Icons.search,
                    text: 'Search',
                  ),
                  GButton(
                    icon: Icons.person,
                    text: 'Profile',
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
