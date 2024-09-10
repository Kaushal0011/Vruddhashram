import 'dart:io';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:vruddhashram_admin/navigation_drawer/navigation_drawer.dart';
import '../text_styles/app_large_text.dart';
import '../text_styles/app_text.dart';

class Publication extends StatelessWidget {
  const Publication({Key? key}) : super(key: key);

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
            title: const Text('Bagban (બાગબાન)'),
          ),
          body: ListView(
            children: [
              Container(
                width: double.maxFinite,
                child: AppLargeText(
                  text: '\n BAGBAN (બાગબાન)',
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
                        '- Publication: BAGBAN (બાગબાન): Ashram publishes a magazine named "BAGBAN" to create awareness about problems of elderly people quarterly (every three months) - which includes a report of various activities carried out during the period and detail of donation receipt by the ashram. \n - It also contains stories, poems, articles related to Ashram mates written by the Ashram mates and outsiders.'),
              ),
            ],
          )),
    );
  }
}
