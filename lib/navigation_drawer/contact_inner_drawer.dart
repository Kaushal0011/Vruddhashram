import 'package:flutter/material.dart';
import 'package:vruddhashram_admin/contact_nav_pages/contact_us.dart';
import 'package:vruddhashram_admin/contact_nav_pages/visit.dart';
import 'package:vruddhashram_admin/contact_nav_pages/volunteer.dart';
import '../main.dart';

class MyContact extends StatelessWidget {
  final VoidCallback goBack;

  MyContact({required this.goBack});

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
              'Contact',
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
              'Contact Us',
              textScaleFactor: 1.3,
            ),
            onTap: () => onItemPressed(context, index: 0),
          ),
          ListTile(
            title: Text(
              'Shedual A Visit',
              textScaleFactor: 1.3,
            ),
            onTap: () => onItemPressed(context, index: 1),
          ),
          ListTile(
            title: Text(
              'Become A Volunteer',
              textScaleFactor: 1.3,
            ),
            onTap: () => onItemPressed(context, index: 2),
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
            context, MaterialPageRoute(builder: (context) => ContactUs()));
        break;

      case 1:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Visit()));
        break;

      case 2:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Volunteer()));
        break;

      default:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => MyApp()));
        break;
    }
  }
}
