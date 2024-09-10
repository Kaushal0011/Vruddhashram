import 'package:flutter/cupertino.dart';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../navigation_drawer/navigation_drawer.dart';
import '../text_styles/app_large_text.dart';
import '../text_styles/app_text.dart';

class SocialActivities extends StatelessWidget {
  const SocialActivities({Key? key}) : super(key: key);

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
            title: const Text('Social Activities'),
          ),
          body: ListView(
            children: [
              Container(
                width: double.maxFinite,
                child: AppLargeText(
                    text: '\n Social and Entertainment Activities',
                    color: Colors.red),
              ),
              const Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              Container(
                width: double.maxFinite,
                child: AppText(
                    text:
                        '- N.S.S. school and college students visit the institution on national and religious festivals. They read out books to the Ashram mates, write letters for them, clean the rooms for those who are invalid or illiterate. They also arrange get-together functions and felicitation programs. \n - Bhajan Sandhyas and religious festivals like Ramnavmi, Janmashtami, Raksha Bandhan, Navratri, Shivaratri, Christmas, National Vruddha Day. are celebrated together by the Ashram mates with great enthusiasm every year. \n - Programs of Light and Instrumental Music, Old Film Songs, Magic Shows, Folk Songs, Dayara, Raas-Garba etc are arranged regularly. Various entertainment groups of Bhavnagar, Social Organizations, and service clubs arrange such events. Some music-lover Ashram mates celebrate their birthdays by themselves arranging such programs. \n - The Ashram mates are event taken out to see some good movies in the theatres and some other programs. \n - Students of various schools are invited and given a place to perform art & cultural activities. Thay use the ashram premises for the same. \n - There is special attention on Garba during Navratri festival where not only the elderly ashram people but also elders from nearby places join in the fun and cherish moments of joy.'),
              ),
            ],
          )),
    );
  }
}
