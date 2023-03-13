import 'package:clone_udbpay_app/models/billings/billings_model.dart';
import 'package:clone_udbpay_app/screens/listtagihan.dart';
import 'package:flutter/material.dart';

class Anouncement extends StatelessWidget {
  const Anouncement({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 70,
        right: 15,
        left: 15,
      ),
      child: Container(
        height: 110,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 3,
          itemBuilder: (context, index) {
            return Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                height: 260,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.white30,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(7),
                      child: Container(
                        height: 150,
                        width: 120,
                        decoration: BoxDecoration(
                          // color: Colors.grey,
                          image: DecorationImage(
                            image: NetworkImage(
                              'https://picsum.photos/200/300',
                            ),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 12,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'KKN DI DESA PENARI ',
                            style: TextStyle(fontWeight: FontWeight.bold),
                            overflow: TextOverflow.fade,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Icon(Icons.calendar_month),
                              Text('19-11-2022'),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text('Lorem Ipsum '),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class Billings extends StatelessWidget {
  // bool isPressed = true;
  final List<BillingProdi> content;
  const Billings({
    Key? key,
    required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 5,
        left: 10,
        right: 10,
      ),
      child: Container(
        height: 1100,
        //mulai dari sini
        child: ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: content.length,
          itemBuilder: (BuildContext context, int index) {
            final BillingProdi dataContent = content[index];
            return Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Container(
                  height: 120,
                  width: 150,
                  decoration: BoxDecoration(
                    // color: Colors.amber,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${dataContent.title}',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Tagihan: ${dataContent.bills}\nPotongan :${dataContent.dicount}\nTerbayar:${dataContent.paidOff}',
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Kekurangan :',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Container(
                              height: 25,
                              // width: 50,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: Text('${dataContent.lack}'),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class HeaderItems extends StatelessWidget {
  const HeaderItems({
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
              padding: const EdgeInsets.all(10),
              child: Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: NetworkImage('https://picsum.photos/200/300'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Column(
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
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ListTagihan()));
                },
                child: Icon(
                  Icons.shopping_bag_outlined,
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
