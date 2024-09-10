import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:vruddhashram_admin/navigation_drawer/navigation_drawer.dart';

import '../../global.dart';

class VolunteerData extends StatefulWidget {
  const VolunteerData({Key? key}) : super(key: key);

  @override
  State<VolunteerData> createState() => _VolunteerDataState();
}

class _VolunteerDataState extends State<VolunteerData> {
  List volunteerList = [];
  String url = "http://" + ip + "/application/";

  Future<void> deleteRecord(String email) async {
    try {
      var response = await http.post(Uri.parse((url+"deleteVolunteer.php")), body: {
        "Email": email,
      });
      var res = json.decode(response.body);
      print(response.body);
      if (res['success'] == 'true') {
        Fluttertoast.showToast(msg: "Record Deleted", fontSize: 18);
        getAllVolunteers();
      } else {
        Fluttertoast.showToast(msg: "Error!", fontSize: 18);
      }
    } catch (e) {
      print(e);
    }
  }

  getAllVolunteers() async {
    var response = await http.get(Uri.parse(url+"admin.php"));
    if (response.statusCode == 200) {
      setState(() {
        volunteerList = json.decode(response.body);
      });
      print(volunteerList);
      return volunteerList;
    }
  }

  @override
  void initState() {
    getAllVolunteers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      body: ListView.separated(
          separatorBuilder: (context, index) {
            return Divider();
          },
          itemCount: volunteerList.length,
          itemBuilder: (context, index) {
            return ListTile(
                leading: Text(volunteerList[index]['Name']),
                title: Text(volunteerList[index]['Email']),
                subtitle: Column(
                  children: <Widget>[
                    Text(
                      volunteerList[index]['Number'],
                    ),
                    Text(volunteerList[index]['Work']),
                    Text(volunteerList[index]['Remark']),
                  ],
                  crossAxisAlignment: CrossAxisAlignment.center,
                ),
                trailing: IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () {
                    deleteRecord(volunteerList[index]['Email']);
                  },
                ));
          }),
    );
  }
}
