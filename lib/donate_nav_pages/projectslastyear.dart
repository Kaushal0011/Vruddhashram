import 'dart:io';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:vruddhashram_admin/navigation_drawer/navigation_drawer.dart';
import '../text_styles/app_large_text.dart';
import '../text_styles/app_text.dart';

class ProjectsLastYear extends StatelessWidget {
  const ProjectsLastYear({Key? key}) : super(key: key);

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
            title: const Text('Projects Done in Last One Year'),
          ),
          body: ListView(
            children: [
              Container(
                width: double.maxFinite,
                child: AppLargeText(
                  text: '\n Projects done in Last One Year',
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
                        '- There was an excessive use of electricity in all the three buildings of the Trust. \n - The electricity bills were incurring high expenses. We have installed Solar Rooftops of 30+34 k.w. capacity for both the Ashram buildings. \n - One of the rooftops is donated by Life Insurance Corporation of India (LIC, India). The second rooftop is financed by the Trust. \n - Electric Solar Rooftops supply was extremely useful in the cost reduction of electricity bills. \n - Ashram Kitchen serves approximated 1000 people daily. Ashram has three Kitchens. 2 Ashram Kitchen, and one Tiffin Kitchen. We are planning to make a one kitchen. Kitchen required an update. \n - Kitchen modernization was essential in Ashram. For kitchen appliances, we received a big donation of 10 lakh rupees from Mr. Arun Sanghvi, USA. \n - The use of Modern appliances amenities not only gives relief in reducing the expenditure of the kitchen but also helps to reduce the human efforts and manpower too therefore we have purchased following modern appliances for Ashram kitchens.'),
              ),
              Container(
                width: double.maxFinite,
                child: AppLargeText(
                    text:
                        '\n 1. Automatic Roti machine and related appliances. \n 2. Vegetable chopper, piler. \n 3. Necessary required utensils and 500 tiffin boxes. \n 4. Pulveriser.'),
              ),
              Container(
                width: double.maxFinite,
                child: AppText(
                    text:
                        '\n - Solar Water Heater for Smt. Gulabben Haribhai Shah Vruddh Niketan (श्रीमती गुलाबबेन हरिभाइ शाह वृद्ध निकेतन): Both Ashram buildings have Solar Rooftop solar water heating system so that Ashram mates can avail hot water facility.'),
              ),
            ],
          )),
    );
  }
}
