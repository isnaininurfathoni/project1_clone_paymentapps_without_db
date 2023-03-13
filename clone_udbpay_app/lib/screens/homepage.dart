import 'package:clone_udbpay_app/components/homepage/homeComponent.dart';
import 'package:clone_udbpay_app/models/billings/billings_data.dart';
import 'package:clone_udbpay_app/models/billings/tagihanLain_data.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isPressed = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: ListView(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 120,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 75, 32, 106),
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    Anouncement(),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 180,
                        right: 15,
                        left: 15,
                      ),
                      child: Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Container(
                          height: 1190,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              // ButtonBills(),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          isPressed = true;
                                        });
                                      },
                                      child: Container(
                                        width: 150,
                                        height: 50,
                                        decoration: BoxDecoration(
                                          color: isPressed == true
                                              ? Color.fromARGB(255, 75, 32, 106)
                                              : Colors.grey[200],
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        // child:
                                        child: Center(
                                          child: Text(
                                            'Tagihan Prodi',
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: isPressed == true
                                                  ? Colors.white
                                                  : Colors.grey,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          isPressed = false;
                                        });
                                      },
                                      child: Container(
                                        width: 150,
                                        height: 50,
                                        decoration: BoxDecoration(
                                          color: isPressed == false
                                              ? Color.fromARGB(255, 75, 32, 106)
                                              : Colors.grey[200],
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        // child:
                                        child: Center(
                                          child: Text(
                                            'Tagihan Lain',
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: isPressed == false
                                                  ? Colors.white
                                                  : Colors.grey,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Billings(
                                content: isPressed == true
                                    ? dataBillings
                                    : dataTagihan,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          HeaderItems(),
        ],
      ),
      // bottomNavigationBar: TombolBawah(index: 0),
    );
  }
}
