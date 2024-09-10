import 'package:flutter/material.dart';
import 'package:vruddhashram_admin/admin_panel/admin_panel.dart';
import 'package:vruddhashram_admin/main.dart';
import 'package:vruddhashram_admin/text_styles/app_large_text.dart';
import '../main_nav_pages/about_us.dart';
import '../main_nav_pages/amrit_mahotsav.dart';
import '../main_nav_pages/awards.dart';
import '../main_nav_pages/new_projects.dart';
import '../main_nav_pages/trustees.dart';
import 'contact_inner_drawer.dart';
import 'donate_inner_drawer.dart';
import 'facilities_inner_drawer.dart';
import 'gallery_inner_drawer.dart';

class MyDrawer extends StatefulWidget {
  @override
  _DrawerState createState() => _DrawerState();
}

class _DrawerState extends State<MyDrawer> {
  int _selectedDestination = 0;
  late int myIndex;
  late PageController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: 0);
  }

  //The Logic where you change the pages
  _onChangePage(int index) {
    if (index != 0)
      setState(() => myIndex =
          index); //change myIndex if you're Selecting between Settings and Explore
    _controller.animateToPage(index.clamp(0, 1),
        duration: const Duration(milliseconds: 500), curve: Curves.linear);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: PageView.builder(
            controller: _controller,
            physics: NeverScrollableScrollPhysics(),
            //so the user can not move between pages
            itemCount: 4,
            itemBuilder: (context, index) {
              // Original Drawer
              if (index == 0)
                return MyWidget(
                  facilities: () => _onChangePage(1),
                  gallary: () => _onChangePage(2),
                  donate: () => _onChangePage(3),
                  contact: () => _onChangePage(4),
                );

              //Second Drawer form the PageView
              switch (myIndex) {
                case 1:
                  return MyFacilities(goBack: () => _onChangePage(0));
                case 2:
                  return MyGallary(goBack: () => _onChangePage(0));
                case 3:
                  return MyDonate(goBack: () => _onChangePage(0));
                case 4:
                default:
                  return MyContact(goBack: () => _onChangePage(0));
              }
            }));
  }
}

//The Menu Drawer (Your first image)
class MyWidget extends StatelessWidget {
  final VoidCallback facilities;
  final VoidCallback gallary;
  final VoidCallback donate;
  final VoidCallback contact;

  MyWidget(
      {required this.facilities,
      required this.gallary,
      required this.donate,
      required this.contact});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverList(
            delegate: SliverChildListDelegate([
          ListTile(
            contentPadding: EdgeInsets.fromLTRB(20, 30, 0, 0),
            tileColor: Colors.blue[200],
            title: AppLargeText(text: 'Vruddhashram'),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              'Home',
              textScaleFactor: 1.3,
            ),
            onTap: () => onItemPressed(context, index: 0),
          ),
          ListTile(
            title: Text(
              'About Us',
              textScaleFactor: 1.3,
            ),
            onTap: () => onItemPressed(context, index: 1),
          ),
          ListTile(
            title: Text(
              'Trustees',
              textScaleFactor: 1.3,
            ),
            onTap: () => onItemPressed(context, index: 2),
          ),
          ListTile(
            title: Text(
              'Facilities',
              textScaleFactor: 1.3,
            ),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: facilities,
          ),
          ListTile(
            title: Text(
              'Awards',
              textScaleFactor: 1.3,
            ),
            onTap: () => onItemPressed(context, index: 3),
          ),
          ListTile(
            title: Text(
              'New Projects',
              textScaleFactor: 1.3,
            ),
            onTap: () => onItemPressed(context, index: 4),
          ),
          ListTile(
            title: Text(
              'Amrit Mahotsav',
              textScaleFactor: 1.3,
            ),
            onTap: () => onItemPressed(context, index: 5),
          ),
          ListTile(
            title: Text(
              'Gallery',
              textScaleFactor: 1.3,
            ),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: gallary,
          ),
          ListTile(
            title: Text(
              'Donate',
              textScaleFactor: 1.3,
            ),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: donate,
          ),
          ListTile(
            title: Text(
              'Contact',
              textScaleFactor: 1.3,
            ),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: contact,
          ),
          ListTile(
            title: Text(
              'Admin Panel',
              textScaleFactor: 1.3,
            ),
            onTap: () => onItemPressed(context, index: 6),
          ),
        ]))
      ],
    );
  }

  //onItemPressed Method
  void onItemPressed(BuildContext context, {required int index}) {
    Navigator.pop(context);

    switch (index) {
      case 0:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => MyApp()));
        break;

      case 1:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => AboutUs()));
        break;

      case 2:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Trustees()));
        break;

      case 3:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Awards()));
        break;

      case 4:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => NewProjects()));
        break;

      case 5:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => AmritMahotsav()));
        break;

      case 6:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => MyAdminPanel()));
        break;

      default:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => MyApp()));
        break;
    }
  }
}

// The settings Drawer(second image)

class MyInnerDrawer extends StatelessWidget {
  final String name;
  final PageController _controller;

  MyInnerDrawer(this._controller, this.name);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ListTile(
        title: Text(name),
        trailing: const Icon(Icons.arrow_back_ios),
        onTap: () => _controller.animateToPage(0,
            duration: const Duration(milliseconds: 500), curve: Curves.linear),
      )
    ]);
  }
}
