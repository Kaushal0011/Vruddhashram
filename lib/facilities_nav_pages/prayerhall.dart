import 'dart:io';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:vruddhashram_admin/navigation_drawer/navigation_drawer.dart';
import '../text_styles/app_large_text.dart';
import '../text_styles/app_text.dart';

class PrayerHall extends StatelessWidget {
  const PrayerHall({Key? key}) : super(key: key);

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
            title: const Text('Prayer Hall and Temple'),
          ),
          body: ListView(
            children: [
              Container(
                width: double.maxFinite,
                child: AppLargeText(
                  text: '\n Temple',
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
                        '- Both building complex of the Bhavnagar Vruddhashram have got special prayer hall with the mike-speaker announcement facilities. \n - The spiritually conducive environment is maintained in the prayer hall through displays, pictures, drawings, and inspiring thoughts painted on the walls. \n - Regular prayers in the morning and evening are undertaken. Prayers are food for their soul and spirits. \n - When they come out of prayers, they shine with the freshness and spiritual brilliance on their face. \n - A well-decorated temple with a pleasant architectural outlook helps the Ashram mates connect themselves with their higher-selves which gives them supreme gratification and spiritual fulfillment. \n - Ashram mates invariably uncover the divinity already residing within themselves.'),
              ),
            ],
          )),
    );
  }
}
