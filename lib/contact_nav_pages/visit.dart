import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:vruddhashram_admin/navigation_drawer/navigation_drawer.dart';

import '../global.dart';

class Visit extends StatefulWidget {
  // const Volunteer({Key? key}) : super(key: key);

  @override
  VisitState createState() {
    return VisitState();
  }
}

class VisitState extends State<Visit> {
  final formkey = GlobalKey<FormState>();
  String name = "";
  String number = "";
  String email = "";
  String date = "";
  String remark = "";

  // Color color=Colors.blue;
  void insertData() {
    var url = "http://" + ip + "/application/visiter.php";
    http.post(Uri.parse(url), body: {
      "name": name,
      "number": number,
      "email": email,
      "date": date,
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
          elevation: 0,
          backgroundColor: Colors.blue[200],
          title: const Text('Schedule a Visit'),
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
                      Text(
                        "Get in Touch",
                        style: TextStyle(fontSize: 30, color: Colors.red),
                      ),
                      Text(
                        "Alternatively fill in the form and we will get back to you:",
                        style: TextStyle(fontSize: 30),
                      ),
                      SizedBox(height: height * 0.01),
                      TextFormField(
                        decoration:
                            InputDecoration(labelText: "Enter your Name"),
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
                      DateTimePicker(
                        initialValue: '',
                        firstDate: DateTime(2000),
                        lastDate: DateTime(2100),
                        dateLabelText: 'Visiting Date',
                        onChanged: (val) => print(val),
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Enter valid date";
                          } else {
                            date = val;
                            return null;
                          }
                        },
                        onSaved: (val) => print(val),
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
                        //margin: EdgeInsets.all(25),
                        margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
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
            )));
  }
}
