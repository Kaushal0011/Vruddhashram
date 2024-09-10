import 'dart:io';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vruddhashram_admin/navigation_drawer/navigation_drawer.dart';

import '../text_styles/app_large_text.dart';
import '../text_styles/app_text.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({Key? key}) : super(key: key);

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
            title: const Text('Contact Us'),
          ),
          body: ListView(
            children: [
              Container(
                width: double.maxFinite,
                child: AppLargeText(
                  text: '\n ADDRESS',
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
                      '\n THE BHAVNAGAR VRUDDHASHRAM AND THE JIVAN SANDHYA AROGYA SUSUSHRA-DHAM \n OPP. T.V. RELY CENTER, GHOGHA CIRCLE, \n BHAVNAGAR - 364 001. GUJARAT, INDIA.',
                ),
              ),
              const Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              Container(
                width: double.maxFinite,
                child: AppLargeText(
                  text: '\n CONTACT DETAILS',
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
                      '\n PHONE : (0278) 2200287, 2204033 \n ADMIN DEPT. MR. N.F.TRIVEDI: 9428009694 \n EMAIL ID : BHAVVRUDHTRUST@YMAIL.COM',
                ),
              ),
              const Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              TextButton(
                child: Text(
                  "Map",
                  style: TextStyle(color: Colors.greenAccent),
                ),
                onPressed: () async {
                  if (await canLaunch(
                      "https://www.google.co.in/maps/place/Vriddh+Ashram+Bhavnagar/@21.7645178,72.1577534,17z/data=!3m1!4b1!4m5!3m4!1s0x395f5a65d18b9125:0xe15fab51218e117e!8m2!3d21.7645197!4d72.1599511")) {
                    await launch(
                      "https://www.google.co.in/maps/place/Vriddh+Ashram+Bhavnagar/@21.7645178,72.1577534,17z/data=!3m1!4b1!4m5!3m4!1s0x395f5a65d18b9125:0xe15fab51218e117e!8m2!3d21.7645197!4d72.1599511",
                      universalLinksOnly: true,
                    );
                  } else {
                    throw 'There was a problem to open the url';
                  }
                },
              ),
              const Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              TextButton(
                child: Text(
                  "Instagram",
                  style: TextStyle(color: Colors.red),
                ),
                onPressed: () async {
                  if (await canLaunch(
                      "https://www.instagram.com/bhavnagar_vruddhashram_trust/")) {
                    await launch(
                      "https://www.instagram.com/bhavnagar_vruddhashram_trust/",
                      universalLinksOnly: true,
                    );
                  } else {
                    throw 'There was a problem to open the url';
                  }
                },
              ),
              const Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              TextButton(
                child: Text(
                  "Facebook",
                  style: TextStyle(color: Colors.blue),
                ),
                onPressed: () async {
                  if (await canLaunch(
                      "https://www.facebook.com/bhavnagar.vruddhashramtrust")) {
                    await launch(
                      "https://www.facebook.com/bhavnagar.vruddhashramtrust",
                      universalLinksOnly: true,
                    );
                  } else {
                    throw 'There was a problem to open the url';
                  }
                },
              ),
              const Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              TextButton(
                child: Text(
                  "WhatsApp",
                  style: TextStyle(color: Colors.green),
                ),
                onPressed: () async {
                  if (await canLaunch(
                      "https://api.whatsapp.com/resolve/?deeplink=%2F%2B91%25208866229903%3Ftext%3DHello%2BBhavnagar%2BVruddhashram%2BTrust&not_found=1")) {
                    await launch(
                      "https://api.whatsapp.com/resolve/?deeplink=%2F%2B91%25208866229903%3Ftext%3DHello%2BBhavnagar%2BVruddhashram%2BTrust&not_found=1",
                      universalLinksOnly: true,
                    );
                  } else {
                    throw 'There was a problem to open the url';
                  }
                },
              ),
              const Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              TextButton(
                child: Text(
                  "YouTube",
                  style: TextStyle(color: Colors.red),
                ),
                onPressed: () async {
                  if (await canLaunch(
                      "https://www.youtube.com/channel/UCIGk8absr0-oZsMOYpuFqQw")) {
                    await launch(
                      "https://www.youtube.com/channel/UCIGk8absr0-oZsMOYpuFqQw",
                      universalLinksOnly: true,
                    );
                  } else {
                    throw 'There was a problem to open the url';
                  }
                },
              ),
              const Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              TextButton(
                child: Text(
                  "Developed by : Uday Gadhiya - 8866229903",
                  style: TextStyle(color: Colors.red),
                ),
                onPressed: () async {
                  if (await canLaunch(
                      "http://bhavnagarvruddhashram.com/about_developer/index.php")) {
                    await launch(
                      "http://bhavnagarvruddhashram.com/about_developer/index.php",
                      universalLinksOnly: true,
                    );
                  } else {
                    throw 'There was a problem to open the url';
                  }
                },
              ),
            ],
          )),
    );
  }
}
