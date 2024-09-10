import 'dart:io';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:vruddhashram_admin/navigation_drawer/navigation_drawer.dart';

import '../text_styles/app_large_text.dart';
import '../text_styles/app_text.dart';


class Valiben extends StatelessWidget {
  const Valiben({Key? key}) : super(key: key);

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
          title: const Text(' Health Care'),
        ),
        body: ListView(
          children: [
            Container(
              width: double.maxFinite,
              child: AppLargeText(text: '\n Health Care',color: Colors.red,),
            ),
            const Divider(color: Colors.grey, thickness: 1,),
            Container(
              width: double.maxFinite,
              child: AppText(text: ' The ashram has different types of hospitals inside the new building premises serving the residents of the ashram as well as outsiders.'),
            ),
            Container(
              width: double.maxFinite,
              child: AppLargeText(text: '\n - Ayurvedic \n - Allopathic \n - Homeopathy \n - Acupressure \n - Naturopathy \n\n Dispensary Charge Rs. 2/- for Ashram people and Rs. 4/- for outsiders.'),
            ),
            Container(
              width: double.maxFinite,
              child: AppText(text: '\n\n - Medical surveillance and regular health assistance at this age is inevitable to everyone. \n - There is a well-equipped, full-fledged dispensary and clinic to monitor all major and minor, acute and chronic ailments, injuries, sicknesses, and illnesses of the Ashram mates. \n - At present, there are Allopathic, Homeopathic, Acupressure, Ayurvedic Clinic & Dispensary are managed by qualified and expert panel of doctors. \n - The Ashram mates are properly and regularly attended and correctly administered. \n - Timely medical measures keep them fit and in good health spirit.'),
            ),
          ],
        )
      ),
    );
  }
}
