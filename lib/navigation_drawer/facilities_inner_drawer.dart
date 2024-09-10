import 'package:flutter/material.dart';
import 'package:vruddhashram_admin/facilities_nav_pages/kitchenrooms.dart';
import 'package:vruddhashram_admin/facilities_nav_pages/livingrooms.dart';
import 'package:vruddhashram_admin/facilities_nav_pages/otherfacilities.dart';
import 'package:vruddhashram_admin/facilities_nav_pages/prayerhall.dart';
import 'package:vruddhashram_admin/facilities_nav_pages/publication.dart';
import 'package:vruddhashram_admin/facilities_nav_pages/restroom.dart';
import 'package:vruddhashram_admin/facilities_nav_pages/tourstravels.dart';
import '../facilities_nav_pages/capacity.dart';
import '../facilities_nav_pages/ehall.dart';
import '../facilities_nav_pages/electure.dart';
import '../facilities_nav_pages/experiment_activities.dart';
import '../facilities_nav_pages/healthcare.dart';
import '../facilities_nav_pages/library.dart';
import '../facilities_nav_pages/social_activities.dart';
import '../facilities_nav_pages/tiffin.dart';
import '../main.dart';

class MyFacilities extends StatelessWidget {
  final VoidCallback goBack;

  MyFacilities({required this.goBack});

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
              'Facilities',
              textScaleFactor: 2,
            ),
            onTap: () => print('Facilities'),
          ),
          const Divider(
            color: Colors.grey,
            thickness: 1,
          ),
          ListTile(
            title: Text(
              'Capacity',
              textScaleFactor: 1.3,
            ),
            onTap: () => onItemPressed(context, index: 0),
          ),
          ListTile(
            title: Text(
              'Living Rooms',
              textScaleFactor: 1.3,
            ),
            onTap: () => onItemPressed(context, index: 1),
          ),
          ListTile(
            title: Text(
              'Health Care',
              textScaleFactor: 1.3,
            ),
            onTap: () => onItemPressed(context, index: 2),
          ),
          ListTile(
            title: Text(
              'Library',
              textScaleFactor: 1.3,
            ),
            onTap: () => onItemPressed(context, index: 3),
          ),
          ListTile(
            title: Text(
              'Prayer Hall & Temple',
              textScaleFactor: 1.3,
            ),
            onTap: () => onItemPressed(context, index: 4),
          ),
          ListTile(
            title: Text(
              'Toures & Travels',
              textScaleFactor: 1.3,
            ),
            onTap: () => onItemPressed(context, index: 5),
          ),
          ListTile(
            title: Text(
              'Kitchen & Dining Room',
              textScaleFactor: 1.3,
            ),
            onTap: () => onItemPressed(context, index: 6),
          ),
          ListTile(
            title: Text(
              'Tifin Service',
              textScaleFactor: 1.3,
            ),
            onTap: () => onItemPressed(context, index: 7),
          ),
          ListTile(
            title: Text(
              'Social Activites',
              textScaleFactor: 1.3,
            ),
            onTap: () => onItemPressed(context, index: 8),
          ),
          ListTile(
            title: Text(
              'Publication(BAGBAN)',
              textScaleFactor: 1.3,
            ),
            onTap: () => onItemPressed(context, index: 9),
          ),
          ListTile(
            title: Text(
              'Restroom, play & Exercise',
              textScaleFactor: 1.3,
            ),
            onTap: () => onItemPressed(context, index: 10),
          ),
          ListTile(
            title: Text(
              'Entertainment Hall',
              textScaleFactor: 1.3,
            ),
            onTap: () => onItemPressed(context, index: 11),
          ),
          ListTile(
            title: Text(
              'Expert Lectures',
              textScaleFactor: 1.3,
            ),
            onTap: () => onItemPressed(context, index: 12),
          ),
          ListTile(
            title: Text(
              'Entertainment Activites',
              textScaleFactor: 1.3,
            ),
            onTap: () => onItemPressed(context, index: 13),
          ),
          ListTile(
            title: Text(
              'Other Facilities',
              textScaleFactor: 1.3,
            ),
            onTap: () => onItemPressed(context, index: 14),
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
            context, MaterialPageRoute(builder: (context) => Capacity()));
        break;

      case 1:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => LivingRooms()));
        break;

      case 2:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HealthCare()));
        break;
      case 3:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Library()));
        break;

      case 4:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => PrayerHall()));
        break;

      case 5:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ToursTravels()));
        break;

      case 6:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => KitchenRoom()));
        break;

      case 7:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Tiffin()));
        break;

      case 8:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => SocialActivities()));
        break;

      case 9:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Publication()));
        break;

      case 10:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => RestRoom()));
        break;

      case 11:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => EHall()));
        break;

      case 12:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Electures()));
        break;

      case 13:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => ExperimentActivities()));
        break;

      case 14:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => OtherFacilities()));
        break;

      default:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => MyApp()));
        break;
    }
  }
}
