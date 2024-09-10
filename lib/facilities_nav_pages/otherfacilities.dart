import 'dart:io';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:vruddhashram_admin/navigation_drawer/navigation_drawer.dart';
import '../text_styles/app_large_text.dart';
import '../text_styles/app_text.dart';

class OtherFacilities extends StatelessWidget {
  const OtherFacilities({Key? key}) : super(key: key);

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
            title: const Text('Other Facilities'),
          ),
          body: ListView(
            children: [
              Container(
                width: double.maxFinite,
                child: AppLargeText(text: '\n Community Services'),
              ),
              const Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              Container(
                width: double.maxFinite,
                child: AppText(
                    text:
                        '- It is not only the Ashram mates, but local people from nearby and faraway places take advantage of the facilities and the activities of the institute. \n - E.g. Dispensaries, Library, Temple, Medical Campus, Entertainment and Religious Programmes, Speeches & Talk by Experts etc.'),
              ),
              Container(
                width: double.maxFinite,
                child: AppLargeText(text: '\n Humanitarian Services'),
              ),
              const Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              Container(
                width: double.maxFinite,
                child: AppText(
                    text:
                        '- Total 75 staff members are engaged in this humanitarian service. \n - The other facilities include an administrative office, a beautiful garden, rectors residence, quarters, reception lounge, laundry space, meeting room, water room, stores etc.'),
              ),
              Container(
                width: double.maxFinite,
                child: AppLargeText(text: '\n Other Services'),
              ),
              const Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              Container(
                width: double.maxFinite,
                child: AppText(
                    text:
                        '- Besides all the above facilities and advantages, Ashram mates can also bring their electrical appliance like T.V. and the Ashram does not charge single paisa for the electricity. \n - Thus, after considering all the above benefits and advantages, one of the Ashram mates commented the Ashram as "Swarg" for them. That is "HEAVEN ON EARTH"'),
              ),
            ],
          )),
    );
  }
}
