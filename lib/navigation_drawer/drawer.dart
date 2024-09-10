import 'package:flutter/material.dart';
import 'contact_inner_drawer.dart';
import 'donate_inner_drawer.dart';
import 'facilities_inner_drawer.dart';
import 'gallery_inner_drawer.dart';
import 'navigation_drawer.dart';

class _DrawerState extends State<MyDrawer> {
  late PageController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: 0);
  }

  _onChangePage(int index) {
    _controller.jumpToPage(index);
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: PageView.builder(
      controller: _controller,
      physics: NeverScrollableScrollPhysics(),
      itemCount: 5,
      itemBuilder: (context, index) {
        switch (index) {
          case 1:
            return MyFacilities(goBack: () => _onChangePage(0));
          case 2:
            return MyGallary(goBack: () => _onChangePage(0));
          case 3:
            return MyDonate(goBack: () => _onChangePage(0));
          case 4:
            return MyContact(goBack: () => _onChangePage(0));
          case 0:
          default:
            return MyWidget(
              facilities: () => _onChangePage(1),
              gallary: () => _onChangePage(2),
              donate: () => _onChangePage(3),
              contact: () => _onChangePage(4),
            );
        }
      },
    ));
  }
}
