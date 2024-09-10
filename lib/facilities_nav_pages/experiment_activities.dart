import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../navigation_drawer/navigation_drawer.dart';
import '../text_styles/app_large_text.dart';
import '../text_styles/app_text.dart';

class ExperimentActivities extends StatelessWidget {
  const ExperimentActivities({Key? key}) : super(key: key);

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
            title: const Text('Entertainment Activities'),
          ),
          body: ListView(
            children: [
              Container(
                width: double.maxFinite,
                child: AppLargeText(
                  text: '\nCelebration of Festival',
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
                        '- The Ashram mates are human beings. They have their interest and hobbies & entertainment is one of them. \n - Musical programs of light & instrumental music, old film songs, Bhajan & Kirtan, magic shows, folk songs, Dayara, Ras Garba, etc.. are arranged regularly. \n - The various entertainment groups of Bhavnagar social organizations & services clubs arrange such events over here. \n - Some music lovers celebrate their birthdays by arranging such programs. \n -It is heart-moving to see these elders encouraged in these activities. \n - Also, a celebration of festivals like Navratri, Dipavali, and Janmashtami, etc.. gives good entertainment along with spiritual food. \n - The Ashram mates are taken out for some good movies in the theatres and for some programs. \n - The T.V. room is a place for entertainment for these Ashram mates.'),
              ),
            ],
          )),
    );
  }
}
