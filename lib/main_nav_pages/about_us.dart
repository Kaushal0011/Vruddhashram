import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:vruddhashram_admin/navigation_drawer/navigation_drawer.dart';
import '../about_us_readmore/gosaliya.dart';
import '../about_us_readmore/valiben.dart';
import '../facilities_nav_pages/kitchenrooms.dart';
import '../facilities_nav_pages/livingrooms.dart';
import '../text_styles/app_large_text.dart';
import '../text_styles/app_text.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

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
          title: const Text('About Us'),
        ),
        body: ListView(
          children: [
            Container(
              width: double.maxFinite,
              child: AppLargeText(
                text:
                    '\n Glimpses of the Infrastructure and Operational Facilities',
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
                    '- Two well-lit, well-ventilated buildings, appropriately designed with all facilities, amenities, and support system a pilgrimage like place to visit in Bhavnagar. \n - Well equipped up-to-date facilities and administrative network. \n - Continuous improvement operational functioning of Ashram. \n - An excellent state of the art, a proven role model for institutions pursuing similar goals and objectives.',
              ),
            ),
            Container(
              width: double.maxFinite,
              child: AppLargeText(
                  text:
                      ' \n 1. Smt. Valiben Haribhai Valiya (શ્રીમતી વાલીબેન હરિભાઇ વળીયા)- Clinic and Dispensary :'),
            ),
            const Divider(
              color: Colors.grey,
              thickness: 1,
            ),
            Container(
              width: double.maxFinite,
              child: AppText(
                  text:
                      '  Allopathic, Homeopathic, Acupressure, Ayurvedic:- Clinic and Dispensary \n - Medical surveillance - regular health assistance readily availed at this age. \n - Qualified and expert panel of doctors. \n - Regular health checkups of Ashram mates.'),
            ),
            TextButton(
              style: TextButton.styleFrom(
                textStyle: const TextStyle(fontSize: 15),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Valiben()));
              },
              child: const Text('Read more...'),
            ),
            Container(
              width: double.maxFinite,
              child: AppLargeText(
                  text:
                      '\n 2. Shree R. V. Gosaliya (શ્રી આર. વી. ગોસળિયા ) Library and Reading Room'),
            ),
            const Divider(
              color: Colors.grey,
              thickness: 1,
            ),
            Container(
              width: double.maxFinite,
              child: AppText(
                  text:
                      '  Ashram Library having more than 10595 books, 72 periodicals, and 8 daily newspapers \n - Gujarati, Hindi, and English. \n - Borrow and read in rooms, in the reading hall, anywhere in Ashram. \n - Spiritual books of all religions, storybooks, novels, poems, inspiring quotations. \n - The library is enriched annually.'),
            ),
            TextButton(
              style: TextButton.styleFrom(
                textStyle: const TextStyle(fontSize: 15),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Gosaliya()));
              },
              child: const Text('Read more...'),
            ),
            Container(
              width: double.maxFinite,
              child: AppLargeText(text: '\n 3. Living Rooms'),
            ),
            const Divider(
              color: Colors.grey,
              thickness: 1,
            ),
            Container(
              width: double.maxFinite,
              child: AppText(
                  text:
                      '  Living rooms for male, female, and couple occupancy. \n - Facilities of attached bathrooms - toilets, chairs, cupboards etc. \n - Daily regular housekeeping is ensued. \n - Space to keep personal belongings, photographs of God Idols, souvenirs, and other articles they bought from their families for Ashram mates.'),
            ),
            TextButton(
              style: TextButton.styleFrom(
                textStyle: const TextStyle(fontSize: 15),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LivingRooms()));
              },
              child: const Text('Read more...'),
            ),
            Container(
              width: double.maxFinite,
              child: AppLargeText(text: '\n 4. Kitchens and Dining Room'),
            ),
            const Divider(
              color: Colors.grey,
              thickness: 1,
            ),
            Container(
              width: double.maxFinite,
              child: AppText(
                  text:
                      ' Three daily dishes: (1) Jain dishes, (2) Dishes without Spices, and (3) Regular dishes. \n - Nicely cooked food and beverages are served fresh on time to Ashram mates. \n - The dining hall: a pleasant and inspiring spiritual environment - healthy meals leads towards their perfect psychological and physical wellbeing.'),
            ),
            TextButton(
              style: TextButton.styleFrom(
                textStyle: const TextStyle(fontSize: 15),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => KitchenRoom()));
              },
              child: const Text('Read more...'),
            ),
          ],
        ),
      ),
    );
  }
}
