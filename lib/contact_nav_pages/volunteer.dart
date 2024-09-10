import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:vruddhashram_admin/global.dart';
import 'package:vruddhashram_admin/navigation_drawer/navigation_drawer.dart';

import '../text_styles/app_text.dart';

class Volunteer extends StatefulWidget {
  // const Volunteer({Key? key}) : super(key: key);

  @override
  VolunteerState createState() {
    return VolunteerState();
  }
}

class VolunteerState extends State<Volunteer> {
  final formkey = GlobalKey<FormState>();
  String name = "";
  String number = "";
  String email = "";
  String work = "";
  String remark = "";

  void insertData() {
    var url = "http://" + ip + "/application/volunteer.php";

    http.post(Uri.parse(url), body: {
      "name": name,
      "number": number,
      "email": email,
      "work": work,
      "remark": remark,
    });
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
        key: _scaffoldKey,
        drawer: MyDrawer(),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),

        // backgroundColor: color,
        body: Container(
          padding: const EdgeInsets.only(left: 40, right: 40),
          child: Center(
            child: SingleChildScrollView(
              child: Form(
                key: formkey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: height * 0.01),
                    const Text(
                      "BECOME A VOLUNTEER",
                      style: TextStyle(fontSize: 30, color: Colors.red),
                    ),
                    Container(
                      width: double.maxFinite,
                      child: AppText(
                        text:
                            '\n - We believe that your time is the greatest and most precious gift we could ever receive. We welcome volunteers who have the passion and willingness to bring about social change within our community. \n - Volunteering opportunities can include spending time in Bhavnagar Vruddhashram, organizing & planning events and fundraisers. \n - We give our volunteers the freedom of choosing work, that matches their interests and expertise, on a daily, weekly, monthly, or annual basis.',
                      ),
                    ),
                    SizedBox(height: height * 0.01),
                    TextFormField(
                      decoration: InputDecoration(labelText: "Enter your Name"),
                      validator: (value) {
                        if (value!.isEmpty ||
                            !RegExp(r'^[a-z A-Z]').hasMatch(value!)) {
                          return "Enter valid name";
                        } else {
                          name = value;
                          return null;
                        }
                      },
                    ),
                    SizedBox(height: height * 0.01),
                    TextFormField(
                      decoration:
                          InputDecoration(labelText: "Enter your Number"),
                      validator: (value) {
                        if (value!.isEmpty ||
                            !RegExp(r'^(?:[+0]9)?[0-9]{10,12}$')
                                .hasMatch(value!)) {
                          return "Enter valid number";
                        } else {
                          number = value;
                          return null;
                        }
                      },
                    ),
                    SizedBox(height: height * 0.01),
                    TextFormField(
                      decoration:
                          InputDecoration(labelText: "Enter your Email ID"),
                      validator: (value) {
                        if (value!.isEmpty ||
                            !RegExp(r'^[\w-\.]+@([\w-\.])+[\w]{2,4}')
                                .hasMatch(value!)) {
                          return "Enter valid email id";
                        } else {
                          email = value;
                          return null;
                        }
                      },
                    ),
                    SizedBox(height: height * 0.01),
                    TextFormField(
                      decoration: InputDecoration(
                          labelText: "Currently What are you Doing? "),
                      validator: (value) {
                        if (value!.isEmpty ||
                            !RegExp(r'^[a-z A-Z]').hasMatch(value!)) {
                          return "Enter valid work";
                        } else {
                          work = value;
                          return null;
                        }
                      },
                    ),
                    SizedBox(height: height * 0.01),
                    TextFormField(
                      decoration:
                          InputDecoration(labelText: "Enter your Remarks"),
                      validator: (value) {
                        if (value!.isEmpty ||
                            !RegExp(r'^[a-z A-Z]').hasMatch(value!)) {
                          return "Enter valid remarks";
                        } else {
                          remark = value;
                          return null;
                        }
                      },
                    ),
                    Container(
                      margin: EdgeInsets.all(25),
                      child: FlatButton(
                        child: Text(
                          'Submit',
                          style: TextStyle(fontSize: 20.0),
                        ),
                        color: Colors.blueAccent,
                        textColor: Colors.white,
                        onPressed: () {
                          if (!formkey.currentState!.validate()) {
                            return;
                          } else {
                            insertData();
                          }

                          formkey.currentState!.save();
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
