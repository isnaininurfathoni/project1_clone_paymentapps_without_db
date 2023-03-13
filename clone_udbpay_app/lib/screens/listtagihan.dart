import 'package:clone_udbpay_app/screens/homepage.dart';
import 'package:clone_udbpay_app/startPage.dart';
import 'package:flutter/material.dart';

class ListTagihan extends StatefulWidget {
  const ListTagihan({super.key});

  @override
  State<ListTagihan> createState() => _ListTagihanState();
}

class _ListTagihanState extends State<ListTagihan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Column(
        children: [
          Container(
            height: 150,
            color: Colors.white,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 15,
                    top: 50,
                    right: 15,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Test()));
                    },
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      size: 40,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 40,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Buat Invoice Pembayaran',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        'Pastikan daftar tagihan sudah benar',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 15,
              right: 15,
              top: 10,
            ),
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 8,
                      left: 15,
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.payment,
                          size: 35,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Daftar Tagihan',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    'Tidak ada daftar tagihan',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 60,
                    width: 350,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 48, 11, 74),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Test()));
                      },
                      child: Text(
                        'Buat Daftar Tagihan',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
