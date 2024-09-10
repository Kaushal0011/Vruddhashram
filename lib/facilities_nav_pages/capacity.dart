import 'dart:io';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:vruddhashram_admin/navigation_drawer/navigation_drawer.dart';

import '../text_styles/app_large_text.dart';
import '../text_styles/app_text.dart';

class Capacity extends StatelessWidget {
  const Capacity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DateTime pre_backpress = DateTime.now();

    return WillPopScope(
      onWillPop: () async {
        final timegap = DateTime.now().difference(pre_backpress);
        final cantExit = timegap >= Duration(seconds: 1);
        pre_backpress = DateTime.now();
        if (cantExit) {
          final message = 'Press back again to exit';
          Fluttertoast.showToast(msg: message, fontSize: 18);

          return false;
        } else {
          Fluttertoast.cancel();
          exit(0);
        }
      },
      child: Scaffold(
        drawer: MyDrawer(),
        appBar: AppBar(
          backgroundColor: Colors.blue[200],
          title: const Text('Capacity and Occupancy'),
        ),
        body: Center(
          child: ListView(
            children: <Widget>[
              Container(
                width: double.maxFinite,
                child: AppLargeText(
                  text: '\n Capacity and Occupancy',
                  color: Colors.red,
                ),
              ),
              const Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              Container(
                width: double.maxFinite,
                child: AppText(
                  text:
                      'Capacity & Occupancy are as under, which maintains a good standard of cleanliness and pollution-free environment. Each Ashram mate is allowed to keep their belongings like photographs or idols of their religious faiths except money.',
                ),
              ),
              const Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              Container(
                  margin: EdgeInsets.all(10),
                  child: Table(
                    border: TableBorder.all(
                      color: Colors.black,
                    ),
                    children: [
                      TableRow(children: [
                        Column(
                          children: [
                            Text(
                                'Smt. Gulabben Haribhai Shah Vruddh Niketan \n(श्रीमती गुलाबबेन हरिभाइ शाह वृद्ध निकेतन)',
                                style: TextStyle(fontSize: 20.0))
                          ],
                        ),
                        Column(
                          children: [
                            Text('Capacity', style: TextStyle(fontSize: 20.0))
                          ],
                        ),
                        Column(
                          children: [
                            Text('Occupancy', style: TextStyle(fontSize: 20.0))
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                                'Smt. Vasantlakshmi Nanalal Bhayani Jivan Sandhya Arogya Sushrushaa Dham \n(श्रीमती वसंतलक्ष्मी नानालाल भायाणी जिवन संध्या आरोग्य सुश्रुशा धाम)',
                                style: TextStyle(fontSize: 20.0))
                          ],
                        ),
                        Column(
                          children: [
                            Text('Capacity', style: TextStyle(fontSize: 20.0))
                          ],
                        ),
                        Column(
                          children: [
                            Text('Occupancy', style: TextStyle(fontSize: 20.0))
                          ],
                        ),
                      ]),
                      TableRow(children: [
                        Column(
                          children: [Text(' Gents Cabin')],
                        ),
                        Column(
                          children: [Text(' 50')],
                        ),
                        Column(
                          children: [Text(' 34')],
                        ),
                        Column(
                          children: [Text(' Ground Floor')],
                        ),
                        Column(
                          children: [Text(' 12')],
                        ),
                        Column(
                          children: [Text(' 12')],
                        ),
                      ]),
                      TableRow(children: [
                        Column(
                          children: [Text(' Ladies Cabin')],
                        ),
                        Column(
                          children: [Text(' 30')],
                        ),
                        Column(
                          children: [Text(' 29')],
                        ),
                        Column(
                          children: [Text(' First Floor')],
                        ),
                        Column(
                          children: [Text(' 24')],
                        ),
                        Column(
                          children: [Text(' 24')],
                        ),
                      ]),
                      TableRow(children: [
                        Column(
                          children: [Text(' Couple Room')],
                        ),
                        Column(
                          children: [Text(' 22')],
                        ),
                        Column(
                          children: [Text(' 19')],
                        ),
                        Column(
                          children: [Text(' Second Floor')],
                        ),
                        Column(
                          children: [Text(' 32')],
                        ),
                        Column(
                          children: [Text(' 32')],
                        ),
                      ]),
                      TableRow(children: [
                        Column(
                          children: [Text(' Gents Room')],
                        ),
                        Column(
                          children: [Text(' 16')],
                        ),
                        Column(
                          children: [Text(' 14')],
                        ),
                        Column(
                          children: [Text(' Third Floor')],
                        ),
                        Column(
                          children: [Text(' 32')],
                        ),
                        Column(
                          children: [Text(' 26')],
                        ),
                      ]),
                      TableRow(children: [
                        Column(
                          children: [Text(' Ladies Room')],
                        ),
                        Column(
                          children: [Text(' 46')],
                        ),
                        Column(
                          children: [Text(' 41')],
                        ),
                        Column(
                          children: [Text(' Special New Room')],
                        ),
                        Column(
                          children: [Text(' 10')],
                        ),
                        Column(
                          children: [Text(' 2')],
                        ),
                      ]),
                      TableRow(children: [
                        Column(
                          children: [Text(' Total')],
                        ),
                        Column(
                          children: [Text(' 164')],
                        ),
                        Column(
                          children: [Text(' 137')],
                        ),
                        Column(
                          children: [Text(' Total')],
                        ),
                        Column(
                          children: [Text(' 110')],
                        ),
                        Column(
                          children: [Text(' 92')],
                        ),
                      ]),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
