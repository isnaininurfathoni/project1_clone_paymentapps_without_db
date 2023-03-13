import 'package:clone_udbpay_app/components/absen/absenscaner.dart';
import 'package:clone_udbpay_app/components/absen/matkul.dart';
import 'package:clone_udbpay_app/models/matakuliah/data_matakuliah.dart';
import 'package:flutter/material.dart';
import '../components/absen/identitas.dart';

class AbsenPage extends StatefulWidget {
  const AbsenPage({super.key});

  @override
  State<AbsenPage> createState() => _AbsenPageState();
}

class _AbsenPageState extends State<AbsenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ListView(
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
                        )),
                  ),
                  Identitas(),
                ],
              ),
              Matakuliah(
                matkul: dataMatakuliah,
              ),
            ],
          ),
          AbsenScaner(),
        ],
      ),
    );
  }
}
