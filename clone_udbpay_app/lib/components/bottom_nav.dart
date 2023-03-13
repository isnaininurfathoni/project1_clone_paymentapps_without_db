import 'package:clone_udbpay_app/screens/historypage.dart';
import 'package:clone_udbpay_app/screens/homepage.dart';
import 'package:clone_udbpay_app/screens/invoice_page.dart';
import 'package:flutter/material.dart';

class TombolBawah extends StatefulWidget {
  int index = 0;
  final screens = [
    HomePage(),
    InvoicePage(),
    HistoryPage(),
  ];
  TombolBawah({
    required this.index,
  });

  @override
  State<TombolBawah> createState() => _TombolBawahState();
}

class _TombolBawahState extends State<TombolBawah> {
  @override
  Widget build(BuildContext context) {
    return NavigationBarTheme(
      data: NavigationBarThemeData(
        indicatorColor: Colors.indigo,
        labelTextStyle: MaterialStateProperty.all(
          TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      child: NavigationBar(
        selectedIndex: widget.index,
        onDestinationSelected: (index) => setState(
          () => this.widget.index = index,
        ),
        destinations: [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'Tagihan',
          ),
          NavigationDestination(
            icon: Icon(Icons.wallet),
            label: 'Invoice',
          ),
          NavigationDestination(
            icon: Icon(Icons.history),
            label: 'History',
          ),
          NavigationDestination(
            icon: Icon(Icons.qr_code),
            label: 'Absen',
          ),
        ],
      ),
    );
  }
}
