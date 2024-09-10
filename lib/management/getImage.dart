import 'dart:async';
import 'dart:convert';
import 'dart:core';
import 'package:flutter/material.dart';
import 'package:http/http.dart' show Response, get, post;
import 'package:http/http.dart' as http;
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
      image: "http://" + ip + "/application/Imgs Trust/slides/" + json['image'],
    );
  }

  static Future<String> getJsonEndpoint() async {
    // print(imgName);
    var url = "http://" + ip + "/application/getAllImages.php/getImage";
    final http.Response response = await http.post(
      Uri.parse('http://100.96.188.170/application/getAllImages.php'),
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

  Future<List<getImages>> downloadJSON() async {
    String jsonEndpoint = "http://" + ip + "/application/getAllImages.php";

    final response = await get(Uri.parse(jsonEndpoint));
    if (response.statusCode == 200) {
      List data = jsonDecode(response.body);

      return data[0]
          .map<getImages>((getImg) => getImages.fromJson(getImg))
          .toList();
    } else {
      throw Exception(
          'We were not able to successfully download the json data.');
    }
  }
}
