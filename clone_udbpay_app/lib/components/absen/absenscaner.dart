import 'dart:async';
import 'dart:io';
import 'dart:typed_data';
import 'package:permission_handler/permission_handler.dart';

import 'package:flutter/material.dart';
import 'package:qrscan/qrscan.dart ' as scanner;

class AbsenScaner extends StatefulWidget {
  const AbsenScaner({
    Key? key,
  }) : super(key: key);

  @override
  State<AbsenScaner> createState() => _AbsenScanerState();
}

class _AbsenScanerState extends State<AbsenScaner> {
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
                    'ISNAINI NUR FATHONI',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'D3 Teknik Komputer',
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
                onTap: () async {
                  Future _scan() async {
                    await Permission.camera.request();
                  }

                  await scanner.scan();
                  setState(() {});
                },
                child: Icon(
                  Icons.qr_code_scanner,
                  size: 50,
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



//   Future _scanPhoto() async {
//     await Permission.storage.request();
//     String barcode = await scanner.scanPhoto();
//     this._outputController.text = barcode;
//   }

//   Future _scanPath(String path) async {
//     await Permission.storage.request();
//     String barcode = await scanner.scanPath(path);
//     this._outputController.text = barcode;
//   }

//   Future _scanBytes() async {
//     File file = await ImagePicker().getImage(source: ImageSource.camera).then((picked) {
//       if (picked == null) return null;
//       return File(picked.path);
//     });
//     if (file == null) return;
//     Uint8List bytes = file.readAsBytesSync();
//     String barcode = await scanner.scanBytes(bytes);
//     this._outputController.text = barcode;
//   }

//   Future _generateBarCode(String inputCode) async {
//     Uint8List result = await scanner.generateBarCode(inputCode);
//     this.setState(() => this.bytes = result);
//   }
// }