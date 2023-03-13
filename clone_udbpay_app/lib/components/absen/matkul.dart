import 'package:clone_udbpay_app/models/matakuliah/matakuliah_model.dart';
import 'package:flutter/material.dart';
import 'package:qrscan/qrscan.dart ' as scanner;

class Matakuliah extends StatelessWidget {
  final List<MatakuliahItems> matkul;
  const Matakuliah({
    required this.matkul,
  });

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
                      Icons.class_,
                      size: 30,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Kelas Perkuliahan',
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
                    itemCount: matkul.length,
                    itemBuilder: (BuildContext context, int index) {
                      final MatakuliahItems listMatkul = matkul[index];
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
                            height: 190,
                            width: 400,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 5,
                                top: 5,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('${listMatkul.tahun}'),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Text(
                                    '${listMatkul.kode}-${listMatkul.matakuliah}',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Text('21A1/D3-Teknik Komputer'),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '${listMatkul.dosen}',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            height: 2,
                                          ),
                                          Text(
                                            '${listMatkul.hari}',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            height: 2,
                                          ),
                                          Text(
                                            '${listMatkul.ruang}',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 15),
                                        child: Container(
                                          height: 70,
                                          width: 70,
                                          decoration: BoxDecoration(
                                            color: Colors.green,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: Center(
                                            child: Icon(
                                              Icons.remove_red_eye_outlined,
                                              size: 50,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
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
