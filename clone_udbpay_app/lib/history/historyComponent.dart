import 'package:clone_udbpay_app/models/history/historymodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HistorHeader extends StatelessWidget {
  const HistorHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 75, 32, 106),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 45),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'History',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Pembayaran yang telah dilakukan',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.yellow,
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 15, top: 20),
              child: GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (BuildContext contex) {
                      return Container(
                        height: 200,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Konfirmasi',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Ingin Logout dari akun sekarang?',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(
                              height: 50,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  height: 50,
                                  width: 150,
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text(
                                      'Tidak',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 50,
                                  width: 150,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 48, 11, 74),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: TextButton(
                                    onPressed: () {
                                      SystemNavigator.pop();
                                    },
                                    child: Text(
                                      'Ya',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
                child: Icon(
                  Icons.exit_to_app,
                  size: 40,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Historylist extends StatelessWidget {
  final List<HistoryItems> data;
  const Historylist({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 15,
        right: 15,
        left: 15,
      ),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 10,
        child: Container(
          height: 1400,
          // color: Colors.blue,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                  top: 10,
                  bottom: 10,
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.history,
                      size: 30,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'History Pembayaran',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 5,
                  right: 10,
                  left: 10,
                ),
                child: Container(
                  height: 1250,
                  // color: Colors.amber,
                  child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: data.length,
                    itemBuilder: (BuildContext context, int index) {
                      final HistoryItems historylist = data[index];
                      return Padding(
                        padding: const EdgeInsets.only(
                          bottom: 10,
                        ),
                        child: Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Container(
                            height: 120,
                            width: 400,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Text(
                                    '${historylist.semester}',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Row(
                                    children: [
                                      Text('Tanggal Pembayaran :'),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                          '${historylist.tanggal}${historylist.jam}'),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 10,
                                    top: 25,
                                    right: 5,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Terbayar :',
                                        style: TextStyle(fontSize: 16),
                                      ),
                                      Container(
                                        height: 25,
                                        decoration: BoxDecoration(
                                          color: Colors.green,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: Center(
                                          child: Padding(
                                            padding: const EdgeInsets.all(5),
                                            child:
                                                Text('${historylist.terbayar}'),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Identitas extends StatelessWidget {
  const Identitas({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 120,
        right: 15,
        left: 15,
      ),
      child: Card(
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Container(
          height: 120,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                  right: 5,
                  left: 10,
                  bottom: 10,
                ),
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage('https://picsum.photos/200/300'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'ISNAINI NUR FATHONI',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Icon(Icons.my_library_books),
                        SizedBox(
                          width: 3,
                        ),
                        Text('D3-Teknik Komputer'),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Icon(Icons.perm_identity),
                        SizedBox(
                          width: 3,
                        ),
                        Text('210104009'),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
