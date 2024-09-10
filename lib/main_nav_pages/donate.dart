import 'dart:io';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:vruddhashram_admin/navigation_drawer/navigation_drawer.dart';
import '../text_styles/app_large_text.dart';
import '../text_styles/app_text.dart';

class Donate extends StatelessWidget {
  const Donate({Key? key}) : super(key: key);

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
          title: const Text('Donate'),
        ),
        body: ListView(
          children: [
            Container(
              width: double.maxFinite,
              child: AppLargeText(text: '\n Donate Us'),
            ),
            Container(
              width: double.maxFinite,
              child: AppText(
                  text:
                      'Donation \n\n A plea to donate to Bhavnagar Vruddhashram Trust \n\n भावनगर वृद्धाश्रम ट्र्स्ट दान देने हेतु आपसे विनती करता है। \n\n ભાવનગર વૃદ્ધાશ્રમ ટ્રસ્ટ આપને દાન આપવા વિનંતી કરે છે.'),
            ),

            Container(
              width: double.maxFinite,
              child: AppLargeText(text: '\n Donation Recieved Last Year'),
            ),
            Container(
              width: double.maxFinite,
              child: AppLargeText(
                  text: '\n Date: 01/01/2021 to 30/06/2021 Donation Details'),
            ),
            Container(
              width: double.maxFinite,
              child: AppLargeText(text: '\n Projects Done in Last One Year'),
            ),
            Container(
              width: double.maxFinite,
              child: AppText(
                  text:
                      '\n\n - There was an excessive use of electricity in all the three buildings of the Trust. \n - The electricity bills were incurring high expenses. We have installed Solar Rooftops of 30+34 k.w. capacity for both the Ashram buildings. \n - One of the rooftops is donated by Life Insurance Corporation of India (LIC, India). The second rooftop is financed by the Trust. \n - Electric Solar Rooftops supply was extremely useful in the cost reduction of electricity bills.'),
            ),
            Container(
              width: double.maxFinite,
              child: AppLargeText(text: '\n How Funds are used ?'),
            ),
            Container(
              width: double.maxFinite,
              child: AppText(
                  text:
                      '\n\n - Smt. Gulabben Haribhai Shah Vruddh Niketan (श्रीमती गुलाबबेन हरिभाइ शाह वृद्ध निकेतन) \n\n - According to experts, the architects opinion Vruddh Niketan Building is very old so the building should be demolished and new should be constructed. Approx. cost is 6 Crore Rupees which is our incoming project for which we need social support.'),
            ),
          ],
        ),
      ),
    );
  }
}
