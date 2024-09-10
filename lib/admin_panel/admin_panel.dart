import 'package:flutter/material.dart';
import 'package:vruddhashram_admin/admin_panel/admin_pages/upload_screen.dart';
import 'package:vruddhashram_admin/navigation_drawer/navigation_drawer.dart';

import 'admin_pages/visiter_data.dart';
import 'admin_pages/volunteer_data.dart';

class MyAdminPanel extends StatelessWidget {
  const MyAdminPanel({Key? key}) : super(key: key);

  @override
    Widget build(BuildContext context) => DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: MyDrawer(),
          appBar: AppBar(
            title: Text("Admin"),
            bottom: TabBar(
              tabs: [
                Tab(text: 'Get Volunteer',),
                Tab(text: 'Get Visit',),
                Tab(text: 'Upload Image',)
              ],
            ),
          ),
          body: TabBarView(
            children: [
              VolunteerData(),
              VisiterData(),
              UploadScreen(),
            ],
          )
      ),
    );
}
