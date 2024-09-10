import 'dart:io';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:vruddhashram_admin/navigation_drawer/navigation_drawer.dart';
import '../text_styles/app_large_text.dart';
import '../text_styles/app_text.dart';

class RestRoom extends StatelessWidget {
  const RestRoom({Key? key}) : super(key: key);

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
            title: const Text('Rest, Room and Play'),
          ),
          body: ListView(
            children: [
              Container(
                width: double.maxFinite,
                child: AppLargeText(
                  text: '\n Rest Room Facilities',
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
                        '- There are well-marked facilities for Ashram mates to rest, play or perform various physical exercises. \n - These facilities motivate and inspire them for remaining active and confident. \n - The medical care unit is supplemented by a primary nursing preliminary procedure and undertaken so that for such treatment the ailing Ashram mates need not to be taken to the city hospitals.'),
              ),
            ],
          )),
    );
  }
}
