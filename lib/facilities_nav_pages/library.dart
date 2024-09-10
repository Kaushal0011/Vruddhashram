import 'dart:io';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../navigation_drawer/navigation_drawer.dart';
import '../text_styles/app_large_text.dart';
import '../text_styles/app_text.dart';

class Library extends StatelessWidget {
  const Library({Key? key}) : super(key: key);

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
            title: const Text('Public Library and Reading Room'),
          ),
          body: ListView(
            children: [
              Container(
                width: double.maxFinite,
                child: AppLargeText(
                  text: '\n Library and Reading Room',
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
                        '\n Vruddhashram Library is having more than 10595 books, 72 periodicals, and 8 daily newspapers.'),
              ),
              Container(
                width: double.maxFinite,
                child: AppText(
                    text:
                        '\n - The institution has got a treasure of books and periodicals in Gujarati, Hindi, and English to cater to the emotional and intellectuals need of the Ashram mates. \n - They can take books, magazines into their rooms or read right there in the reading hall. There are spiritual books of all religions, storybooks, novels, poems, inspiring quotations, and the literature to appeal to the whole range of interests and aptitude. \n - The habit of reading helps ensure the climate of positive thinking, literacy, and creativity. \n - The library can be accessed by outsiders by paying Rs 100/- as a token fee for the 1 year and the ashram people can access the library for Rs 5/- only as a token fee for 1 year.'),
              ),
            ],
          )),
    );
  }
}
