import 'dart:io';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:vruddhashram_admin/navigation_drawer/navigation_drawer.dart';
import '../text_styles/app_large_text.dart';
import '../text_styles/app_text.dart';

class KitchenRoom extends StatelessWidget {
  const KitchenRoom({Key? key}) : super(key: key);

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
            title: const Text('Kitchen and Dining Room'),
          ),
          body: ListView(
            children: [
              Container(
                width: double.maxFinite,
                child: AppLargeText(
                  text: '\n Kitchen and Dining Room',
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
                        ' - Types of dishes are prepared daily : \n (1) Jain dishes. \n (2) Dishes without Spices. \n (3) Regular dishes.'),
              ),
              Container(
                width: double.maxFinite,
                child: AppText(
                    text:
                        '\n - This is the source of nourishing healthy food and a balanced diet befitting to this age-group. \n - The food and beverages are nicely cooked and served fresh on time to the Ashram mates in the dining hall having a pleasant and inspiring spiritual environment so that what they eat or drink leads towards their perfect mental and physical wellbeing. \n - Kitchen and dining hall facilities are considered as the Yagna - activities through which the Ashram mates derive all the energy and inspirations for remaining fit, active cordial co-operative and fulfilled for reset of their lives.'),
              ),
            ],
          )),
    );
  }
}
