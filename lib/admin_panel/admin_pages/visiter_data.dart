import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:vruddhashram_admin/navigation_drawer/navigation_drawer.dart';

import '../../global.dart';

class VisiterData extends StatefulWidget {
  const VisiterData({Key? key}) : super(key: key);

  @override
  State<VisiterData> createState() => _VisiterDataState();
}

class _VisiterDataState extends State<VisiterData> {
  List visiterList = [];
  String url = "http://" + ip + "/application/";

  Future<void> deleteRecord(String email) async {
    try {
      var response = await http.post(Uri.parse((url + "deleteVisiter.php")), body: {
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
    var response = await http.get(Uri.parse(url + "getvisit.php"));
    if (response.statusCode == 200) {
      setState(() {
        visiterList = json.decode(response.body);
      });
      print(visiterList);
      return visiterList;
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
          itemCount: visiterList.length,
          itemBuilder: (context, index) {
            return ListTile(
                leading: Text(visiterList[index]['Name']),
                title: Text(visiterList[index]['Email']),
                subtitle: Column(
                  children: <Widget>[
                    Text(
                      visiterList[index]['Number'],
                    ),
                    Text(visiterList[index]['Date']),
                    Text(visiterList[index]['Remark']),
                  ],
                  crossAxisAlignment: CrossAxisAlignment.center,
                ),
                trailing: IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () {
                    deleteRecord(visiterList[index]['Email']);
                  },
                ));
          }),
    );
  }
}
