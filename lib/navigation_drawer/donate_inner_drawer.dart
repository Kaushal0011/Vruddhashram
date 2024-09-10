import 'package:flutter/material.dart';
import '../main.dart';
import 'package:vruddhashram_admin/donate_nav_pages/donateus.dart';
import 'package:vruddhashram_admin/donate_nav_pages/donationlastyear.dart';
import 'package:vruddhashram_admin/donate_nav_pages/fundsused.dart';
import 'package:vruddhashram_admin/donate_nav_pages/projectslastyear.dart';

class MyDonate extends StatelessWidget {
  final VoidCallback goBack;

  MyDonate({required this.goBack});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverList(
            delegate: SliverChildListDelegate([
          ListTile(
            leading: const Icon(Icons.arrow_back_ios),
            title: Text(
              'Main Menu',
              textScaleFactor: 1.3,
            ),
            onTap: goBack,
          ),
          ListTile(
            title: Text(
              'Donate',
              textScaleFactor: 2,
            ),
            onTap: () => print('Settings'),
          ),
          const Divider(
            color: Colors.grey,
            thickness: 1,
          ),
          ListTile(
            title: Text(
              'Donate Us',
              textScaleFactor: 1.3,
            ),
            onTap: () => onItemPressed(context, index: 0),
          ),
          ListTile(
            title: Text(
              'Donation Recived Last Year',
              textScaleFactor: 1.3,
            ),
            onTap: () => onItemPressed(context, index: 1),
          ),
          ListTile(
            title: Text(
              'Projects Done In Last Year',
              textScaleFactor: 1.3,
            ),
            onTap: () => onItemPressed(context, index: 2),
          ),
          ListTile(
            title: Text(
              'How Funds Are Used?',
              textScaleFactor: 1.3,
            ),
            onTap: () => onItemPressed(context, index: 3),
          ),
        ]))
      ],
    );
  }

  void onItemPressed(BuildContext context, {required int index}) {
    Navigator.pop(context);

    switch (index) {
      case 0:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => DonateUs()));
        break;

      case 1:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => DonationLastYear()));
        break;

      case 2:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => ProjectsLastYear()));
        break;

      case 3:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => FundsUsed()));
        break;

      default:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => MyApp()));
        break;
    }
  }
}
