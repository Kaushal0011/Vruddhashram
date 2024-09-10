import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart';
import 'package:vruddhashram_admin/navigation_drawer/navigation_drawer.dart';
import '../global.dart';
import '../text_styles/app_large_text.dart';
import '../text_styles/app_text.dart';

class getImages {
  final String name, image;

  getImages({
    required this.name,
    required this.image,
  });

  factory getImages.fromJson(Map<String, dynamic> json) {
    return getImages(
      name: json['name'],
      image: "http://" + ip + "/application/Imgs Trust/awards/" + json['image'],
    );
  }

  static Future<String> getJsonEndpoint() async {
    var url = "http://" + ip + "/application/awards.php";
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

class Awards extends StatelessWidget {
  const Awards({Key? key}) : super(key: key);

  Future<List<getImages>> downloadJSON() async {
    String jsonEndpoint = "http://" + ip + "/application/awards.php/getImage";
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
          title: const Text('Awards'),
        ),
        body: ListView(
          children: [
            Container(
              width: double.maxFinite,
              child: AppLargeText(
                text: '\n Awards and Recognition',
                color: Colors.red,
              ),
            ),
            const Divider(
              color: Colors.grey,
              thickness: 1,
            ),
            Container(
              width: double.maxFinite,
              child: AppText(
                text:
                    '- Rotary Award on "Caring for the Aged". \n - In recognition of the outstanding performance and designated contribution to the cause of enriching the lives of the elderly, this prestigious ROTARY INDIA AWARD 2005 was conferred on BHAVNAGAR VRUDDHASHRAM. \n - Shree Harshadbhai Sheth (શ્રી હર્ષદભાઈ શેઠ), Managing Trustee received this highest recognition for excellent humanitarian services from the hands of Former Prime Minister Shri I. K. Gujaral in New Delhi.',
              ),
            ),
            Container(
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
          ],
        ),
      ),
    );
  }
}
