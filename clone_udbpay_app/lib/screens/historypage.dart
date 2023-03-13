import 'package:clone_udbpay_app/history/historyComponent.dart';
import 'package:clone_udbpay_app/models/history/historyData.dart';
import 'package:flutter/material.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            // color: Colors.amber,
            child: ListView(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 170,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 75, 32, 106),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                      ),
                    ),
                    Identitas(),
                  ],
                ),
                Historylist(
                  data: dataHistory,
                ),
              ],
            ),
          ),
          HistorHeader(),
        ],
      ),
      // bottomNavigationBar: TombolBawah(index: 0),
    );
  }
}
