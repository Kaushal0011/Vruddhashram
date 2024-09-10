import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:vruddhashram_admin/navigation_drawer/navigation_drawer.dart';

import '../text_styles/app_large_text.dart';
import '../text_styles/app_text.dart';

class FundsUsed extends StatelessWidget {
  const FundsUsed({Key? key}) : super(key: key);

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
          return true;
        }
      },
      child: Scaffold(
          drawer: MyDrawer(),
          appBar: AppBar(
            backgroundColor: Colors.blue[200],
            title: const Text('Funds Usage'),
          ),
          body: ListView(
            children: [
              Container(
                width: double.maxFinite,
                child: AppLargeText(
                  text: '\n Upcoming Projects :',
                  color: Colors.red,
                ),
              ),
              const Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              Container(
                width: double.maxFinite,
                child: AppLargeText(
                    text:
                        'Smt. Gulabben Haribhai Shah Vruddh Niketan (श्रीमती गुलाबबेन हरिभाइ शाह वृद्ध निकेतन)'),
              ),
              Container(
                width: double.maxFinite,
                child: AppText(
                    text:
                        '\n 1. According to experts, the architects opinion Vruddh Niketan Building is very old so the building should be demolished and new should be constructed. Approx. cost is 6 Crore Rupees which is our incoming project for which we need social support. \n 2. Physiotherapy Centre: We have a physiotherapy center for which we require physio equipment.'),
              ),
              Container(
                width: double.maxFinite,
                child: AppLargeText(
                    text: '\n Physiotherapy Centre: First Priority Appliances'),
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
                          Text('Sr.', style: TextStyle(fontSize: 20.0))
                        ],
                      ),
                      Column(
                        children: [
                          Text('Product Description',
                              style: TextStyle(fontSize: 20.0))
                        ],
                      ),
                      Column(
                        children: [
                          Text('Model Number', style: TextStyle(fontSize: 20.0))
                        ],
                      ),
                      Column(
                        children: [
                          Text('Price per Unit',
                              style: TextStyle(fontSize: 20.0))
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [Text(' 1 ')],
                      ),
                      Column(
                        children: [
                          Text(' Computerized Muscle Stimulator TENS')
                        ],
                      ),
                      Column(
                        children: [Text(' VIATO-N535')],
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
                        children: [
                          Text(' Computerised Interferential Therapy Unit')
                        ],
                      ),
                      Column(
                        children: [Text(' VERTEX/N-203')],
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
                        children: [
                          Text(' Computerised Ultra Sound Therapy Unit')
                        ],
                      ),
                      Column(
                        children: [Text(' CYCLOPS-1/TPS-501')],
                      ),
                      Column(
                        children: [Text(' 14500/-')],
                      )
                    ]),
                    TableRow(children: [
                      Column(
                        children: [Text(' ')],
                      ),
                      Column(
                        children: [Text(' ')],
                      ),
                      Column(
                        children: [Text(' TOTAL ')],
                      ),
                      Column(
                        children: [Text(' 86,000/-')],
                      )
                    ]),
                    TableRow(children: [
                      Column(
                        children: [Text(' 4 ')],
                      ),
                      Column(
                        children: [Text(' Computerised Four Channel TENS')],
                      ),
                      Column(
                        children: [Text(' SABE/N-205')],
                      ),
                      Column(
                        children: [Text(' 24500/-')],
                      )
                    ]),
                  ],
                ),
              ),
              Container(
                width: double.maxFinite,
                child: AppLargeText(
                    text:
                        '\n\n Physiotherapy Centre: Second Priority Appliances'),
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
                          Text('Sr.', style: TextStyle(fontSize: 20.0))
                        ],
                      ),
                      Column(
                        children: [
                          Text('Product Description',
                              style: TextStyle(fontSize: 20.0))
                        ],
                      ),
                      Column(
                        children: [
                          Text('Price per Unit',
                              style: TextStyle(fontSize: 20.0))
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [Text(' 1 ')],
                      ),
                      Column(
                        children: [Text(' IFT ')],
                      ),
                      Column(
                        children: [Text(' 4,500/- ')],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [Text(' 2 ')],
                      ),
                      Column(
                        children: [Text(' TENS(4 channel) ')],
                      ),
                      Column(
                        children: [Text(' 24,500/- ')],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [Text(' 3 ')],
                      ),
                      Column(
                        children: [Text(' US ')],
                      ),
                      Column(
                        children: [Text(' 15,000/- ')],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [Text(' 4 ')],
                      ),
                      Column(
                        children: [Text(' TENS with ES ')],
                      ),
                      Column(
                        children: [Text(' 14,000/- ')],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [Text(' 5 ')],
                      ),
                      Column(
                        children: [Text(' TRACTION ')],
                      ),
                      Column(
                        children: [Text(' 38,000/- ')],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [Text(' 6 ')],
                      ),
                      Column(
                        children: [Text(' PWB ')],
                      ),
                      Column(
                        children: [Text(' 18500/- ')],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [Text(' 7 ')],
                      ),
                      Column(
                        children: [Text(' IRR ')],
                      ),
                      Column(
                        children: [Text(' 12500/- ')],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [Text(' 8 ')],
                      ),
                      Column(
                        children: [Text(' Moist Heat ')],
                      ),
                      Column(
                        children: [Text(' 37,000/- ')],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [Text(' 9 ')],
                      ),
                      Column(
                        children: [Text(' Cervical Traction ')],
                      ),
                      Column(
                        children: [Text(' 25,000/- ')],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [Text(' 10 ')],
                      ),
                      Column(
                        children: [Text(' Other Instruments ')],
                      ),
                      Column(
                        children: [Text(' 30,000/- ')],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [Text('  ')],
                      ),
                      Column(
                        children: [Text(' TOTAL ')],
                      ),
                      Column(
                        children: [Text(' 2,19,000/- ')],
                      ),
                    ]),
                  ],
                ),
              ),
              Container(
                width: double.maxFinite,
                child: AppText(
                    text:
                        '\n 3. Audio Visual Support System for Both Ashram Buildings: Projectors, screens, amplifiers, mike systems including podium with microphone, speakers and related equipment - 5 Lakhs. \n 4. Kitchen waste Converter Plant - The leftovers of the kitchen can be converted into fertilizers. For this noble cause we require to install it - 3 Lakh Rupees. \n 5. Transportation Facilities: Bus/minibus/cars facilities for Ashram mates - cost to be updated. \n 6. CCTV surveillance security for both the building - cost to be updated. \n 7. Other Small Requirements: Speakers per room, wall clocks, exhaust fans, water jugs, new chairs - 5 Lakh Rupees.'),
              ),
            ],
          )),
    );
  }
}
