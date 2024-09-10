import 'dart:io';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:vruddhashram_admin/navigation_drawer/navigation_drawer.dart';
import '../text_styles/app_large_text.dart';
import '../text_styles/app_text.dart';

class Tiffin extends StatelessWidget {
  const Tiffin({Key? key}) : super(key: key);

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
            title: const Text('Tiffin Services'),
          ),
          body: ListView(
            children: [
              Container(
                width: double.maxFinite,
                child: AppLargeText(
                  text: '\n Tiffin ',
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
                        '- The Vruddhashram provides Tiffin Service to the elderly people residing in the city of Bhavnagar. \n - Currently, the Ashram serves around 290 households out of which 20 households get Tiffin Service free for cost for a lifetime as they are economically not capable of paying the token Tiffin charges. \n - The Tiffin charges are Rs. 2300/- per month for two times meal including delivery charges. \n - Tiffin servicemen deliver the Tiffins and also take back the same twice a day. \n - Menu for lunch is Roti (રોટલી), Daal (દાળ), Rice (ભાત), Sabzi (શાક), Beans (કઠોળ), and Salad. \n - Menu for dinner is Khichadi (ખીચડી) Kadhi (કઢી), Bhakahri (ભાખરી), and Sabzi (શાક). \n - Tiffins get delivered at 11 in morning and 6.30 in the evening.'),
              ),
            ],
          )),
    );
  }
}
