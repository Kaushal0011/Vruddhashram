import 'dart:convert';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart';
import 'package:vruddhashram_admin/navigation_drawer/navigation_drawer.dart';
import '../global.dart';

class getImages {
  final String name, image;

  getImages({
    required this.name,
    required this.image,
  });

  factory getImages.fromJson(Map<String, dynamic> json) {
    return getImages(
      name: json['name'],
      image: "http://" +
          ip +
          "/application/Imgs Trust/amrit_mahotsav/" +
          json['image'],
    );
  }

  static Future<String> getJsonEndpoint() async {
    var url = "http://" + ip + "/application/am.php";
    final Response response = await post(
      Uri.parse(url),
    );

    print(response.body);

    return url;
  }
}

class CustomListView extends StatelessWidget {
  final List<getImages> getImage;

  CustomListView(this.getImage);

  Widget build(context) {
    return ListView.builder(
      itemCount: getImage.length,
      itemBuilder: (context, int currentIndex) {
        return createViewItem(getImage[currentIndex], context);
      },
    );
  }

  Widget createViewItem(getImages getImage, BuildContext context) {
    return ListTile(
        title: Card(
          elevation: 10.0,
          child: Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom: 2.0),
                  child: Image.network(getImage.image),
                ),
                Row(children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 0.1),
                  ),
                ]),
              ],
            ),
          ),
        ),
        onTap: () {});
  }
}

class AmritMahotsav extends StatelessWidget {
  const AmritMahotsav({Key? key}) : super(key: key);

  Future<List<getImages>> downloadJSON() async {
    String jsonEndpoint = "http://" + ip + "/application/am.php/getImage";
    getImages.getJsonEndpoint();
    final response = await get(Uri.parse(jsonEndpoint));
    if (response.statusCode == 200) {
      List data = await json.decode(response.body);
      print(data);
      print(response.body);
      return data[0]
          .map<getImages>((getImg) => getImages.fromJson(getImg))
          .toList();
    } else {
      throw Exception(
          'We were not able to successfully download the json data.');
    }
  }

  @override
  Widget build(BuildContext context) {
    DateTime pre_backpress = DateTime.now();

    return WillPopScope(
      onWillPop: () async {
        final timegap = DateTime.now().difference(pre_backpress);
        final cantExit = timegap >= Duration(seconds: 1);
        pre_backpress = DateTime.now();
        if (cantExit) {
          final message = 'Press back again to exit';
          Fluttertoast.showToast(msg: message, fontSize: 18);

          return false;
        } else {
          Fluttertoast.cancel();
          exit(0);
        }
      },
      child: Scaffold(
        drawer: MyDrawer(),
        appBar: AppBar(
          backgroundColor: Colors.blue[200],
          title: const Text('Amrit Mahotsav'),
        ),
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: FutureBuilder<List<getImages>>(
              future: downloadJSON(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  List<getImages>? getImage = snapshot.data;
                  return CustomListView(getImage!);
                } else if (snapshot.hasError) {
                  return Text('${snapshot.error}');
                }
                return new CircularProgressIndicator();
              },
            ),
          ),
        ),
      ),
    );
  }
}
