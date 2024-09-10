import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../navigation_drawer/navigation_drawer.dart';
import '../text_styles/app_large_text.dart';

class DonationLastYear extends StatelessWidget {
  const DonationLastYear({Key? key}) : super(key: key);

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
            title: const Text('Donation Recieved Last Year'),
          ),
          body: ListView(
            children: [
              Container(
                width: double.maxFinite,
                child: AppLargeText(
                  text: '\n Donation Recieved Last Year',
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
                        ' Date: 01/01/2021 to 30/06/2021 \n Donation Details :'),
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
                          Text(' Sr No.', style: TextStyle(fontSize: 20.0))
                        ],
                      ),
                      Column(
                        children: [
                          Text(' Donor Name', style: TextStyle(fontSize: 20.0))
                        ],
                      ),
                      Column(
                        children: [
                          Text(' Amount Rs.', style: TextStyle(fontSize: 20.0))
                        ],
                      ),
                      Column(
                        children: [
                          Text(' Donation for',
                              style: TextStyle(fontSize: 20.0))
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [Text(' 1 ')],
                      ),
                      Column(
                        children: [Text(' Arun R Sanghvi ')],
                      ),
                      Column(
                        children: [Text(' 5,34,644/- ')],
                      ),
                      Column(
                        children: [Text(' PA System Sadhan Purchase Fund ')],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [Text(' 2 ')],
                      ),
                      Column(
                        children: [Text(' Arun R Sanghvi ')],
                      ),
                      Column(
                        children: [Text(' 2,00,000/- ')],
                      ),
                      Column(
                        children: [Text(' Physiotherapy Sadhan Purchse Fund ')],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [Text('')],
                      ),
                      Column(
                        children: [Text('')],
                      ),
                      Column(
                        children: [
                          Text(' 7,34,644/-', style: TextStyle(fontSize: 20.0))
                        ],
                      ),
                      Column(
                        children: [
                          Text(' Sadhan Purchase ',
                              style: TextStyle(fontSize: 20.0))
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [
                          Text(' Sr No.', style: TextStyle(fontSize: 20.0))
                        ],
                      ),
                      Column(
                        children: [
                          Text(' Donor Name', style: TextStyle(fontSize: 20.0))
                        ],
                      ),
                      Column(
                        children: [
                          Text(' Amount Rs.', style: TextStyle(fontSize: 20.0))
                        ],
                      ),
                      Column(
                        children: [
                          Text(' Donation for',
                              style: TextStyle(fontSize: 20.0))
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [Text(' 1 ')],
                      ),
                      Column(
                        children: [Text(' Vasantrai Kantilal Shah ')],
                      ),
                      Column(
                        children: [Text(' 25,000/- ')],
                      ),
                      Column(
                        children: [Text(' Voluntary Donation ')],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [Text(' 2 ')],
                      ),
                      Column(
                        children: [Text(' Shree ji Material Testing Lab ')],
                      ),
                      Column(
                        children: [Text(' 1.05.600/- ')],
                      ),
                      Column(
                        children: [Text(' Voluntary Donation ')],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [Text(' 3 ')],
                      ),
                      Column(
                        children: [Text(' Rajeshbhai Bhagvandas Gordiya ')],
                      ),
                      Column(
                        children: [Text(' 25,000/- ')],
                      ),
                      Column(
                        children: [Text(' Voluntary Donation ')],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [Text(' 4 ')],
                      ),
                      Column(
                        children: [Text(' Ratibhai Girdharlal Belani ')],
                      ),
                      Column(
                        children: [Text(' 54,000/- ')],
                      ),
                      Column(
                        children: [Text(' Voluntary Donation ')],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [Text(' 5 ')],
                      ),
                      Column(
                        children: [Text(' Durgeshbhai Nalinkant Mehta ')],
                      ),
                      Column(
                        children: [Text(' 1,00,000/- ')],
                      ),
                      Column(
                        children: [Text(' Voluntary Donation ')],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [Text(' 6 ')],
                      ),
                      Column(
                        children: [Text(' Kumudben J Bhatt ')],
                      ),
                      Column(
                        children: [Text(' 25,000/- ')],
                      ),
                      Column(
                        children: [Text(' Voluntary Donation ')],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [Text(' 7 ')],
                      ),
                      Column(
                        children: [Text(' Naliniben Patel ')],
                      ),
                      Column(
                        children: [Text(' 25,000/- ')],
                      ),
                      Column(
                        children: [Text(' Voluntary Donation ')],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [Text(' 8 ')],
                      ),
                      Column(
                        children: [Text(' Kiranbhai Oza ')],
                      ),
                      Column(
                        children: [Text(' 25,000/- ')],
                      ),
                      Column(
                        children: [Text(' Voluntary Donation ')],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [Text(' 9 ')],
                      ),
                      Column(
                        children: [Text(' Nagindas Hiralal Bhayani ')],
                      ),
                      Column(
                        children: [Text(' 1,00,000/- ')],
                      ),
                      Column(
                        children: [Text(' Voluntary Donation ')],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [Text(' 10 ')],
                      ),
                      Column(
                        children: [Text(' V. B. Tiyal ')],
                      ),
                      Column(
                        children: [Text(' 1,00,000/- ')],
                      ),
                      Column(
                        children: [Text(' Voluntary Donation ')],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [Text(' 11 ')],
                      ),
                      Column(
                        children: [Text(' Kishorbhai G Mehta ')],
                      ),
                      Column(
                        children: [Text(' 25,000/- ')],
                      ),
                      Column(
                        children: [Text(' Voluntary Donation ')],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [Text(' 12 ')],
                      ),
                      Column(
                        children: [Text(' Pravinchandr Jadavaji Bhatt ')],
                      ),
                      Column(
                        children: [Text(' 1,00,111/- ')],
                      ),
                      Column(
                        children: [Text(' Voluntary Donation ')],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [Text(' 13 ')],
                      ),
                      Column(
                        children: [Text(' BCM Corporation ')],
                      ),
                      Column(
                        children: [Text(' 51,000/- ')],
                      ),
                      Column(
                        children: [Text(' Voluntary Donation ')],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [Text(' 14 ')],
                      ),
                      Column(
                        children: [
                          Text(' Dushyant & Daksha Patel Foundation ')
                        ],
                      ),
                      Column(
                        children: [Text(' 51,000/- ')],
                      ),
                      Column(
                        children: [Text(' Voluntary Donation ')],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [Text(' 15 ')],
                      ),
                      Column(
                        children: [Text(' Tusharbhai H Parikh ')],
                      ),
                      Column(
                        children: [Text(' 25,002/- ')],
                      ),
                      Column(
                        children: [Text(' Voluntary Donation ')],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [Text(' 16 ')],
                      ),
                      Column(
                        children: [Text(' Chandrika Rameshchandr Khandor ')],
                      ),
                      Column(
                        children: [Text(' 31,000/- ')],
                      ),
                      Column(
                        children: [Text(' Voluntary Donation ')],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [Text(' 17 ')],
                      ),
                      Column(
                        children: [Text(' Komal Agrawal ')],
                      ),
                      Column(
                        children: [Text(' 50,000/- ')],
                      ),
                      Column(
                        children: [Text(' Voluntary Donation ')],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [Text(' 18 ')],
                      ),
                      Column(
                        children: [Text(' Amita Somaiya ')],
                      ),
                      Column(
                        children: [Text(' 25,000/- ')],
                      ),
                      Column(
                        children: [Text(' Voluntary Donation ')],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [Text(' 19 ')],
                      ),
                      Column(
                        children: [Text(' Jayashriben Bakshi ')],
                      ),
                      Column(
                        children: [Text(' 25,000/- ')],
                      ),
                      Column(
                        children: [Text(' Voluntary Donation ')],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [Text(' 1 ')],
                      ),
                      Column(
                        children: [Text(' Poojaben Maheta ')],
                      ),
                      Column(
                        children: [Text(' 25,000/- ')],
                      ),
                      Column(
                        children: [Text(' Voluntary Donation ')],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [Text('')],
                      ),
                      Column(
                        children: [
                          Text(' TOTAL ', style: TextStyle(fontSize: 20.0))
                        ],
                      ),
                      Column(
                        children: [
                          Text(' 9,92,713/- ', style: TextStyle(fontSize: 20.0))
                        ],
                      ),
                      Column(
                        children: [Text('')],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [Text(' 1 ')],
                      ),
                      Column(
                        children: [Text(' Bharatiben Dhruv ')],
                      ),
                      Column(
                        children: [Text(' 27,600/- ')],
                      ),
                      Column(
                        children: [Text(' Tifin Donation ')],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [Text(' 2 ')],
                      ),
                      Column(
                        children: [Text(' Komal Agrawal ')],
                      ),
                      Column(
                        children: [Text(' 50,000/- ')],
                      ),
                      Column(
                        children: [Text(' Tifin Donation ')],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [Text('')],
                      ),
                      Column(
                        children: [
                          Text(' TOTAL ', style: TextStyle(fontSize: 20.0))
                        ],
                      ),
                      Column(
                        children: [
                          Text(' 77,600/- ', style: TextStyle(fontSize: 20.0))
                        ],
                      ),
                      Column(
                        children: [Text('')],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [Text(' 1 ')],
                      ),
                      Column(
                        children: [Text(' Rekhaben Bhaskarbhai Maheta ')],
                      ),
                      Column(
                        children: [Text(' 30,000/- ')],
                      ),
                      Column(
                        children: [Text(' Donation for Tithi 10 yr ')],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [Text(' 2 ')],
                      ),
                      Column(
                        children: [Text(' Bharatbhai Vardhamanbhai Doshi ')],
                      ),
                      Column(
                        children: [Text(' 30,000/- ')],
                      ),
                      Column(
                        children: [Text(' Donation for Tithi 10 yr ')],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [Text(' 3 ')],
                      ),
                      Column(
                        children: [Text(' Arunbhai R. Sanghvi ')],
                      ),
                      Column(
                        children: [Text(' 30,000/- ')],
                      ),
                      Column(
                        children: [Text(' Donation for Tithi 10 yr ')],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [Text(' 4 ')],
                      ),
                      Column(
                        children: [Text(' Arunbhai R. Sanghvi ')],
                      ),
                      Column(
                        children: [Text(' 30,000/- ')],
                      ),
                      Column(
                        children: [Text(' Donation for Tithi 10 yr ')],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [Text(' 5 ')],
                      ),
                      Column(
                        children: [Text(' Arunbhai R. Sanghvi ')],
                      ),
                      Column(
                        children: [Text(' 30,000/- ')],
                      ),
                      Column(
                        children: [Text(' Donation for Tithi 10 yr ')],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [Text(' 6 ')],
                      ),
                      Column(
                        children: [Text(' Arunbhai R. Sanghvi ')],
                      ),
                      Column(
                        children: [Text(' 30,000/- ')],
                      ),
                      Column(
                        children: [Text(' Donation for Tithi 10 yr ')],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [Text(' 7 ')],
                      ),
                      Column(
                        children: [Text(' Arunbhai R. Sanghvi ')],
                      ),
                      Column(
                        children: [Text(' 30,000/- ')],
                      ),
                      Column(
                        children: [Text(' Donation for Tithi 10 yr ')],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [Text(' 8 ')],
                      ),
                      Column(
                        children: [Text(' Arunbhai R. Sanghvi ')],
                      ),
                      Column(
                        children: [Text(' 30,000/- ')],
                      ),
                      Column(
                        children: [Text(' Donation for Tithi 10 yr ')],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [Text(' 9 ')],
                      ),
                      Column(
                        children: [Text(' Arunbhai R. Sanghvi ')],
                      ),
                      Column(
                        children: [Text(' 30,000/- ')],
                      ),
                      Column(
                        children: [Text(' Donation for Tithi 10 yr ')],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [Text(' 10 ')],
                      ),
                      Column(
                        children: [Text(' Arunbhai R. Sanghvi ')],
                      ),
                      Column(
                        children: [Text(' 30,000/- ')],
                      ),
                      Column(
                        children: [Text(' Donation for Tithi 10 yr ')],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [Text(' 11 ')],
                      ),
                      Column(
                        children: [Text(' Arunbhai R. Sanghvi ')],
                      ),
                      Column(
                        children: [Text(' 30,000/- ')],
                      ),
                      Column(
                        children: [Text(' Donation for Tithi 10 yr ')],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [Text(' 12 ')],
                      ),
                      Column(
                        children: [Text(' Achyutbhai N Pandya ')],
                      ),
                      Column(
                        children: [Text(' 30,000/- ')],
                      ),
                      Column(
                        children: [Text(' Donation for Tithi 10 yr ')],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [Text(' 13 ')],
                      ),
                      Column(
                        children: [Text(' Svatiben Harshadbhai Maheta ')],
                      ),
                      Column(
                        children: [Text(' 30,000/- ')],
                      ),
                      Column(
                        children: [Text(' Donation for Tithi 10 yr ')],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [Text(' 14 ')],
                      ),
                      Column(
                        children: [Text(' Narendrabhai Chunilal Parekh ')],
                      ),
                      Column(
                        children: [Text(' 30,000/- ')],
                      ),
                      Column(
                        children: [Text(' Donation for Tithi 10 yr ')],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [Text(' 15 ')],
                      ),
                      Column(
                        children: [Text(' Benshri Jalakben ')],
                      ),
                      Column(
                        children: [Text(' 78,000/- ')],
                      ),
                      Column(
                        children: [Text(' Donation for Tithi 10 yr ')],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [Text(' 16 ')],
                      ),
                      Column(
                        children: [Text(' Nimishbhai Kothari ')],
                      ),
                      Column(
                        children: [Text(' 30,000/- ')],
                      ),
                      Column(
                        children: [Text(' Donation for Tithi 10 yr ')],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [Text(' 17 ')],
                      ),
                      Column(
                        children: [Text(' Nirupaben Vora ')],
                      ),
                      Column(
                        children: [Text(' 30,000/- ')],
                      ),
                      Column(
                        children: [Text(' Donation for Tithi 10 yr ')],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [Text(' 18 ')],
                      ),
                      Column(
                        children: [Text(' Jagdishbhai Doshi ')],
                      ),
                      Column(
                        children: [Text(' 30,000/- ')],
                      ),
                      Column(
                        children: [Text(' Donation for Tithi 10 yr ')],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [Text('')],
                      ),
                      Column(
                        children: [
                          Text(' TOTAL ', style: TextStyle(fontSize: 20.0))
                        ],
                      ),
                      Column(
                        children: [
                          Text(' 5,88,000/- ', style: TextStyle(fontSize: 20.0))
                        ],
                      ),
                      Column(
                        children: [Text('')],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [Text(' 1 ')],
                      ),
                      Column(
                        children: [Text(' Benshri Jalakben ')],
                      ),
                      Column(
                        children: [Text(' 26,000/- ')],
                      ),
                      Column(
                        children: [Text(' Medical Donation ')],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [Text(' 2 ')],
                      ),
                      Column(
                        children: [Text(' Renisense Foundation ')],
                      ),
                      Column(
                        children: [Text(' 30,000/- ')],
                      ),
                      Column(
                        children: [Text(' Medical Donation ')],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [Text('')],
                      ),
                      Column(
                        children: [
                          Text(' TOTAL ', style: TextStyle(fontSize: 20.0))
                        ],
                      ),
                      Column(
                        children: [
                          Text(' 1,27,000/- ', style: TextStyle(fontSize: 20.0))
                        ],
                      ),
                      Column(
                        children: [Text('')],
                      ),
                    ]),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
