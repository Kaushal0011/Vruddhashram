import 'dart:io';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:vruddhashram_admin/navigation_drawer/navigation_drawer.dart';
import '../text_styles/app_large_text.dart';
import '../text_styles/app_text.dart';

class DonateUs extends StatelessWidget {
  const DonateUs({Key? key}) : super(key: key);

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
            title: const Text('Donate Us'),
          ),
          body: ListView(
            children: [
              Container(
                width: double.maxFinite,
                child: AppLargeText(
                  text: '\n Donation',
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
                        'Aged can do much with so little, and you can be a part of that! \n - We sincerely request You from the bottom of our hearts with all love and due respect to please donate for the noble cause of helping and supporting the parentlike elders in dire need. Your contribution is valuable to us. Please dont hesitate to make a call for a donation. \n Thank You!'),
              ),
              Container(
                width: double.maxFinite,
                child: AppLargeText(
                    text: '\n Bhavnagar Vruddhashram Trust, Bhavnagar.'),
              ),
              const Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              Container(
                width: double.maxFinite,
                child: AppText(text: '\n Details for Donation:'),
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
                          Text('One Time Simple Meal - For 10 Years',
                              style: TextStyle(fontSize: 20.0))
                        ],
                      ),
                      Column(
                        children: [
                          Text('30,000/-', style: TextStyle(fontSize: 20.0))
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [
                          Text('One Time Simple Meal - For 2 Years',
                              style: TextStyle(fontSize: 20.0))
                        ],
                      ),
                      Column(
                        children: [
                          Text('7,000/-', style: TextStyle(fontSize: 20.0))
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [
                          Text('One Time Simple Meal',
                              style: TextStyle(fontSize: 20.0))
                        ],
                      ),
                      Column(
                        children: [
                          Text('4,000/-', style: TextStyle(fontSize: 20.0))
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [
                          Text('One Time Simple Meal with Puri',
                              style: TextStyle(fontSize: 20.0))
                        ],
                      ),
                      Column(
                        children: [
                          Text('4,500/-', style: TextStyle(fontSize: 20.0))
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [
                          Text('One Time Breakfast',
                              style: TextStyle(fontSize: 20.0))
                        ],
                      ),
                      Column(
                        children: [
                          Text('2,000/-', style: TextStyle(fontSize: 20.0))
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [
                          Text('Tiffin Meal Assistance for a Month',
                              style: TextStyle(fontSize: 20.0))
                        ],
                      ),
                      Column(
                        children: [
                          Text('2,300/-', style: TextStyle(fontSize: 20.0))
                        ],
                      ),
                    ]),
                  ],
                ),
              ),
              Container(
                width: double.maxFinite,
                child: AppLargeText(text: '\n ભાવનગર વૃધાશ્રમ ટ્રસ્ટ – ભાવનગર'),
              ),
              const Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              Container(
                width: double.maxFinite,
                child: AppText(text: '\n ડોનેશન માટે ની વિગત :'),
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
                          Text('તિથી ૧૦ વર્ષ માટે ( એક ટંક  સાદું ભોજન  )',
                              style: TextStyle(fontSize: 20.0))
                        ],
                      ),
                      Column(
                        children: [
                          Text('30,000/-', style: TextStyle(fontSize: 20.0))
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [
                          Text('તિથી૦૨ વર્ષ માટે ( એક ટંક  સાદું ભોજન  )',
                              style: TextStyle(fontSize: 20.0))
                        ],
                      ),
                      Column(
                        children: [
                          Text('7,000/-', style: TextStyle(fontSize: 20.0))
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [
                          Text('એક ટંક  સાદું ભોજન',
                              style: TextStyle(fontSize: 20.0))
                        ],
                      ),
                      Column(
                        children: [
                          Text('4,000/-', style: TextStyle(fontSize: 20.0))
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [
                          Text('પૂરી સાથે સાદું ભોજન',
                              style: TextStyle(fontSize: 20.0))
                        ],
                      ),
                      Column(
                        children: [
                          Text('4,500/-', style: TextStyle(fontSize: 20.0))
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [
                          Text('એક ટાઇમ ચા નાસ્તો',
                              style: TextStyle(fontSize: 20.0))
                        ],
                      ),
                      Column(
                        children: [
                          Text('2,000/-', style: TextStyle(fontSize: 20.0))
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [
                          Text('ટીફીન ભોજન સહાય (એક મહિના માટે એક ટિફિનનાં)',
                              style: TextStyle(fontSize: 20.0))
                        ],
                      ),
                      Column(
                        children: [
                          Text('2,300/-', style: TextStyle(fontSize: 20.0))
                        ],
                      ),
                    ]),
                  ],
                ),
              ),
              Container(
                width: double.maxFinite,
                child: AppLargeText(
                  text: '\n Bank Details of Bhavnagar Vruddhashram Trust ',
                  color: Colors.red,
                ),
              ),
              const Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              Container(
                width: double.maxFinite,
                child:
                    AppLargeText(text: '\n - Indian Donors can Donate us on :'),
              ),
              Container(
                width: double.maxFinite,
                child: AppText(
                    text:
                        '\n Bank Account Number : 348802010057065 \n Bank Account Holder Name : Bhavnagar Vrudhashram Trust \n Bank Name : Union Bank of India \n Branch Address : Krishnagar, Bhavnagar, Gujarat, India. Pincode - 364002 \n IFSC Code : UBIN0534889'),
              ),
              Container(
                width: double.maxFinite,
                child: AppLargeText(
                    text: '\n\n - Other Countries Donors can Donate us on :'),
              ),
              Container(
                width: double.maxFinite,
                child: AppText(
                    text:
                        '\n Bank Account Number : 40294329100 \n Bank Account Holder Name : BHAVNAGAR VRIDDHASHRAM TRUST \n Bank Name : STATE BANK OF INDIA \n Branch Address : NEW DELHI MAIN BRANCH N.D. MAIN BRANCH 11, PARLIAMENT STREET NEW DELHI - 110001 \n Branch Name : NEW DELHI MAIN BRANCH \n IFSC Code : SBIN0000691 \n SWITF - SBININBB104'),
              ),
              const Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              Container(
                width: double.maxFinite,
                child: AppLargeText(
                    text:
                        'Donation to Vruddhashram Trust is exempted from Income Text under section: IT U/S 80-G(S). \n\n PLEASE GIVE A CALL OR MAIL US BEFORE YOU DONATE - Our executive will be in touch with you.'),
              ),
              const Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              Container(
                width: double.maxFinite,
                child: AppText(
                    text:
                        '\n Whatever you give will be accepted with love.... \n\n  Senior citizens living in Ashram have invested their youth in families and society. Nearly 18 million elderly in India are homeless. Senior citizens existing in poverty, having no families or abandoned, separated, unwelcomed as they do not have a source of income because they have invested their entire lives for families and society during their hay days. They end up living in isolation, starving, waiting for death to embrace them, as they cannot afford even two meals a day!'),
              ),
              Container(
                width: double.maxFinite,
                child: AppLargeText(
                    text:
                        '\n\n "They alone live who live for others, the rest are more dead than alive!" ~Warrior Prophet Vivekananda'),
              ),
              Container(
                width: double.maxFinite,
                child: AppText(
                    text:
                        '\n\n It is our humble attempt to support Ashram mates to takes care of their physical, psychological, social, and spiritual needs. We pray to You to contribute and please donate to help poor elderly to help them have access to a safe Ashram home where they can get food, shelter, medical care, and requirements. Yes, you can bring smiles to the wrinkled faces. Ashram mates genuinely express their gratitude to donors.  Ashram mates pray twice a day for donors and shower their blessings. Blessings come from the heart. Each contribution matters no matter how big or small. Yes, you can donate. And You can make a difference. We are eagerly waiting for your call. Thank You!'),
              ),
              Container(
                width: double.maxFinite,
                child: AppLargeText(
                    text:
                        '\n\n માવતરને અપાયેલ આપનું યથાશક્તિ દાન સપ્રેમ સ્વીકાર્ય છે. આપ જે પણ આપો તે પ્રેમથી સ્વીકારવામાં આવશે...'),
              ),
              Container(
                width: double.maxFinite,
                child: AppText(
                    text:
                        '\n\n Please email or call prior You donate – an Ashram executive will be more than happy to assist You…'),
              ),
            ],
          )),
    );
  }
}
