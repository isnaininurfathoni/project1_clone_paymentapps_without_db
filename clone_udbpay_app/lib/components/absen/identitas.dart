import 'package:flutter/material.dart';

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
