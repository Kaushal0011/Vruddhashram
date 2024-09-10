import 'dart:io';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:vruddhashram_admin/navigation_drawer/navigation_drawer.dart';
import '../text_styles/app_large_text.dart';
import '../text_styles/app_text.dart';

class NewProjects extends StatelessWidget {
  const NewProjects({Key? key}) : super(key: key);

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
          title: const Text('New Projects'),
        ),
        body: ListView(
          children: [
            Container(
              width: double.maxFinite,
              child: AppLargeText(
                text: '\n Our Future Needs',
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
                      ' 1. Old building of Vruddhashram Trust - Shrimati Gulabben Haribhai Shah Vruddha Niketan is required to be rebuild. According to expends opinion the building needs to be construction according to current guideline of the government. The new building will of three stering with kitchen hall, prayer hall, lift and modern amenities. Estimated cost of new building is Rs. 6 crores. We need support for this new project. \n 2. The trust is running physiotherapy centre, with some primary appliance, some other appliance are required the list given below.'),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Table(
                border: TableBorder.all(
                    color: Colors.black, style: BorderStyle.solid, width: 2),
                children: [
                  TableRow(children: [
                    Column(
                      children: [
                        Text(
                          'No.',
                          style: TextStyle(fontSize: 20.0),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          'Model No.',
                          style: TextStyle(fontSize: 20.0),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          'Product Description',
                          style: TextStyle(fontSize: 20.0),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          'Rs. per Unit',
                          style: TextStyle(fontSize: 20.0),
                        )
                      ],
                    ),
                  ]),
                  TableRow(children: [
                    Column(
                      children: [Text(' 1 ')],
                    ),
                    Column(
                      children: [Text(' VIATOR/N-535')],
                    ),
                    Column(
                      children: [
                        Text(' Computerised Muscle Stimulator with TENS')
                      ],
                    ),
                    Column(
                      children: [Text(' 12500/-')],
                    )
                  ]),
                  TableRow(children: [
                    Column(
                      children: [Text(' 2 ')],
                    ),
                    Column(
                      children: [Text(' VERTEX/N-203')],
                    ),
                    Column(
                      children: [
                        Text(' Computerised Interferential Therapy Unit')
                      ],
                    ),
                    Column(
                      children: [Text(' 34500/-')],
                    )
                  ]),
                  TableRow(children: [
                    Column(
                      children: [Text(' 3 ')],
                    ),
                    Column(
                      children: [Text(' CYCLOPS-1/TPS-501')],
                    ),
                    Column(
                      children: [
                        Text(' Computerised Ultra Sound Therapy Unit')
                      ],
                    ),
                    Column(
                      children: [Text(' 14500/-')],
                    )
                  ]),
                  TableRow(children: [
                    Column(
                      children: [Text(' 4 ')],
                    ),
                    Column(
                      children: [Text(' SABE/N-205')],
                    ),
                    Column(
                      children: [Text(' Computerised Four Channel TENS')],
                    ),
                    Column(
                      children: [Text(' 24500/-')],
                    )
                  ]),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Table(
                border: TableBorder.all(
                  color: Colors.black,
                  style: BorderStyle.solid,
                  width: 2,
                ),
                children: [
                  TableRow(
                    children: [
                      Column(
                        children: [
                          Text('Priority', style: TextStyle(fontSize: 20.0))
                        ],
                      ),
                      Column(
                        children: [
                          Text('Machine', style: TextStyle(fontSize: 20.0))
                        ],
                      ),
                      Column(
                        children: [
                          Text('Price', style: TextStyle(fontSize: 20.0))
                        ],
                      ),
                    ],
                  ),
                  TableRow(children: [
                    Column(
                      children: [Text(' 1 ')],
                    ),
                    Column(
                      children: [Text(' IFT ')],
                    ),
                    Column(
                      children: [Text(' 34500 ')],
                    ),
                  ]),
                  TableRow(children: [
                    Column(
                      children: [Text(' 1 ')],
                    ),
                    Column(
                      children: [Text(' TENS(4 channel) ')],
                    ),
                    Column(
                      children: [Text(' 24500 ')],
                    ),
                  ]),
                  TableRow(children: [
                    Column(
                      children: [Text(' 1 ')],
                    ),
                    Column(
                      children: [Text(' US ')],
                    ),
                    Column(
                      children: [Text(' 14500 ')],
                    ),
                  ]),
                  TableRow(children: [
                    Column(
                      children: [Text(' 1 ')],
                    ),
                    Column(
                      children: [Text(' TENS with ES ')],
                    ),
                    Column(
                      children: [Text(' 12500 ')],
                    ),
                  ]),
                  TableRow(children: [
                    Column(
                      children: [Text(' 2 ')],
                    ),
                    Column(
                      children: [Text(' TRACTION ')],
                    ),
                    Column(
                      children: [Text(' 37500 ')],
                    ),
                  ]),
                  TableRow(children: [
                    Column(
                      children: [Text(' 2 ')],
                    ),
                    Column(
                      children: [Text(' PWB ')],
                    ),
                    Column(
                      children: [Text(' 18500 ')],
                    ),
                  ]),
                  TableRow(children: [
                    Column(
                      children: [Text(' 2 ')],
                    ),
                    Column(
                      children: [Text(' IRR ')],
                    ),
                    Column(
                      children: [Text(' 12500 ')],
                    ),
                  ]),
                  TableRow(children: [
                    Column(
                      children: [Text(' 2 ')],
                    ),
                    Column(
                      children: [Text(' SWD ')],
                    ),
                    Column(
                      children: [Text(' 45500 ')],
                    ),
                  ]),
                  TableRow(children: [
                    Column(
                      children: [Text(' 3 ')],
                    ),
                    Column(
                      children: [Text(' Other Instruments ')],
                    ),
                    Column(
                      children: [Text(' 30000 ')],
                    ),
                  ]),
                  TableRow(children: [
                    Column(
                      children: [Text(' 4 ')],
                    ),
                    Column(
                      children: [Text(' Moist Heat ')],
                    ),
                    Column(
                      children: [Text(' 36500 ')],
                    ),
                  ]),
                  TableRow(children: [
                    Column(
                      children: [Text(' 4 ')],
                    ),
                    Column(
                      children: [Text(' Cervical Traction ')],
                    ),
                    Column(
                      children: [Text(' 25500 ')],
                    ),
                  ]),
                  TableRow(children: [
                    Column(
                      children: [Text(' 5 ')],
                    ),
                    Column(
                      children: [Text(' CPM ')],
                    ),
                    Column(
                      children: [Text(' 36000 ')],
                    ),
                  ]),
                  TableRow(children: [
                    Column(
                      children: [Text(' 5 ')],
                    ),
                    Column(
                      children: [Text(' Combinaiton Therapy ')],
                    ),
                    Column(
                      children: [Text(' 90000 ')],
                    ),
                  ]),
                  TableRow(children: [
                    Column(
                      children: [Text(' 6 ')],
                    ),
                    Column(
                      children: [Text(' LASER ')],
                    ),
                    Column(
                      children: [Text(' 124000 ')],
                    ),
                  ]),
                  TableRow(children: [
                    Column(
                      children: [Text(' 6 ')],
                    ),
                    Column(
                      children: [Text(' Trademill ')],
                    ),
                    Column(
                      children: [Text(' 90000 ')],
                    ),
                  ]),
                ],
              ),
            ),
            Container(
              width: double.maxFinite,
              child: AppText(
                  text:
                      '\n 3. Audio-video support system-projector, screen, amplifier, mike, podium and related equipment. \n 4. Kitchen waste conreasion plant. - Rs 5 lacs. \n 5. Vehicle Facility tempo travellor - Rs 18 lacs. \n 6. Video surveillance system for both the building - Rs. 31 lacs. \n 7. Other miscellaneous - fans, wall clock, chairs, water jugs, speakers etc. - Rs. 3 lacs.'),
            ),
          ],
        ),
      ),
    );
  }
}
