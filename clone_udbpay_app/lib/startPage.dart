import 'package:clone_udbpay_app/screens/absenpage.dart';
import 'package:clone_udbpay_app/screens/historypage.dart';
import 'package:clone_udbpay_app/screens/homepage.dart';
import 'package:clone_udbpay_app/screens/invoice_page.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  int page = 0;
  List<Widget> pages = const [
    HomePage(),
    InvoicePage(),
    HistoryPage(),
    AbsenPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[page],
      bottomNavigationBar: GNav(
        gap: 8,
        haptic: true,
        activeColor: Color.fromARGB(255, 75, 32, 106),
        color: Colors.grey,
        duration: Duration(milliseconds: 800),
        tabBackgroundColor: Color.fromARGB(255, 75, 32, 106).withOpacity(0.1),
        curve: Curves.easeOutQuad,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        tabs: [
          GButton(
            icon: Icons.home,
            iconSize: 30,
            text: 'Home',
            textSize: 30,
          ),
          GButton(
            icon: Icons.wallet,
            iconSize: 30,
            textSize: 30,
            text: 'Invoice',
          ),
          GButton(
            icon: Icons.history,
            text: 'History',
            textSize: 30,
            iconSize: 30,
          ),
          GButton(
            icon: Icons.qr_code_scanner_outlined,
            iconSize: 30,
            textSize: 30,
            text: 'Absen',
          ),
        ],
        selectedIndex: page,
        onTabChange: (index) => setState(() => page = index),
      ),
    );
  }
}
