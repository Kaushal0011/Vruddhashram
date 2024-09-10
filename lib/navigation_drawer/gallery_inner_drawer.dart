import 'package:flutter/material.dart';
import 'package:vruddhashram_admin/gallery_nav_pages/esteemed_guest.dart';
import 'package:vruddhashram_admin/gallery_nav_pages/photo_gallery.dart';
import '../main.dart';

class MyGallary extends StatelessWidget {
  final VoidCallback goBack;

  MyGallary({required this.goBack});

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
              'Gallary',
              textScaleFactor: 2,
            ),
            onTap: () => print('Gallary'),
          ),
          const Divider(
            color: Colors.grey,
            thickness: 1,
          ),
          ListTile(
            title: Text(
              'Our Esteemed Guests',
              textScaleFactor: 1.3,
            ),
            onTap: () => onItemPressed(context, index: 0),
          ),
          ListTile(
            title: Text(
              'Photo Gallery',
              textScaleFactor: 1.3,
            ),
            onTap: () => onItemPressed(
              context,
              index: 1,
            ),
          ),
          // ListTile(
          //   title: Text('Videos Gallary'),
          //   onTap: () => onItemPressed(context, index: 2),
          // ),
        ]))
      ],
    );
  }

  void onItemPressed(BuildContext context, {required int index}) {
    Navigator.pop(context);

    switch (index) {
      case 0:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => EsteemedGuest()));
        break;

      case 1:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => PhotoGallery()));
        break;

      // case 2:
      //   Navigator.push(
      //       context, MaterialPageRoute(builder: (context) => VideoGallery()));
      //   break;

      default:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => MyApp()));
        break;
    }
  }
}
