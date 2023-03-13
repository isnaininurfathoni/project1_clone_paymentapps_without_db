import 'package:clone_udbpay_app/components/bottom_nav.dart';
import 'package:clone_udbpay_app/screens/homepage.dart';
import 'package:clone_udbpay_app/startPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class InvoicePage extends StatefulWidget {
  const InvoicePage({super.key});

  @override
  State<InvoicePage> createState() => _InvoicePageState();
}

class _InvoicePageState extends State<InvoicePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              'https://media.istockphoto.com/id/1205541135/id/vektor/sekretaris-wanita-muda-bekerja-di-komputer-kantor.jpg?s=612x612&w=0&k=20&c=JTwZjeDPchl9Cc4InuBR_tmIXC15LNWwapB49drFYx0=',
            ),
            // Image.asset('images/invoice.jpg'),
            Text(
              'Tidak Ada Invoice',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Silahkan membuat Invoice ',
              style: TextStyle(color: Colors.grey),
            ),
            Text(
              'terlebih dahulu ',
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(
              height: 60,
            ),
            Container(
              height: 50,
              width: 200,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 75, 32, 106),
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Test()));
                },
                child: Text(
                  'Buat Invoice',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
