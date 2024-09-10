import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:vruddhashram_admin/text_styles/app_large_text.dart';
import 'package:vruddhashram_admin/text_styles/app_text.dart';
import 'global.dart';
import 'navigation_drawer/navigation_drawer.dart';

void main() {
  runApp(MyApp());
}

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
    var url = "http://" + ip + "/application/home.php";
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

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  Future<List<getImages>> downloadJSON() async {
    String jsonEndpoint = "http://" + ip + "/application/home.php/getImage";
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

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue[200],
            title: const Text('Home'),
          ),
          drawer: MyDrawer(),
          body: Center(
            child: ListView(
              children: [
                SingleChildScrollView(
                  child: Container(
                    height: 150,
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
                Container(
                  width: double.maxFinite,
                  child: AppLargeText(
                    text: '\n Welcome to Bhavnagar Vrudhashram Trust',
                    color: Colors.red,
                  ),
                ),
                Container(
                  width: double.maxFinite,
                  child: Align(
                    child: AppLargeText(
                      text:
                          '\n  मातृ देवो भव​ । पितृ देवो भव । ​ \n  Pioneers offering Elderly Care in Gujarat, Celebrating Golden Jubilee - 50 years in 2020',
                      color: Colors.grey,
                      size: 20,
                    ),
                  ),
                ),
                Container(
                  width: double.maxFinite,
                  child: AppText(
                    text:
                        '\n\n - We pioneer offering elderly care in Gujarat especially for the poorer segments. \n - Unique of its kind an ideal institution and model organization. \n - Dearly respect the elderly people, providing physical emotional, intellectual, and spiritual support. \n - Cater to elderly needs towards their overall wellbeing and happiness. \n\n With commitment, positive outlook, hard and smart work, selfless efforts, monetary & non-monetary, tangible & intangible contributions from the board of trustees, donors, organizations, volunteers, staff of the institution, and society at large. \n\n Help and support from philanthropists like-minded services-oriented groups of people care for aged people in Bhavnagar. \n\n Grown into a very contributive, highly worthwhile, and valuable institution having proved blessings to many individuals, families, and society.',
                  ),
                ),
                Container(
                  width: double.maxFinite,
                  child: AppLargeText(
                    text: '\n 1. Mission, Vision, and Commitment: ',
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
                        '- To provide all the physical, emotional, intellectual and spiritual support and conducive environment to aged people, both male and female, from any caste, creed, religion or faith for their welfare, and wellbeing, health and happiness and peace and tranquility by catering them all their basic needs through physical facilities, cultural and recreational programs and activities, nutrition food, health care and medical facilities, relaxing, recreation and through other measures of holistic nature. \n - To run the institution in the true spirit of Seva (सेवा) - services through the participation of philanthropists, donors, experts, and volunteers from society at large. \n - To continuously improve an up to date the state of art in the field of caring for the aged. \n - To see that these Ashram mates spend their second inning of their lives in all the best cordial, spiritual, and blissful state of mind and perfect health.',
                  ),
                ),
                Container(
                  width: double.maxFinite,
                  child: AppLargeText(
                    text: '\n 2. The Beginning:',
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
                        '- Late Shree Manbhai Bhatt (श्री मानभाइ भट्ट) - a pioneer in social services since 1941 in Bhavnagar visualized the need for elderly care, a well-knit ideal family with love, care, inner satisfaction, and bliss. \n - Smt. Gulabben Haribhai Shah Vruddh Niketan (श्रीमती गुलाबबेन हरिभाइ शाह वृद्ध निकेतन): registered as trust in 1970 supported by the Government grant. \n - Initially, it started in a small dormitory caring for 10 elderly people. \n - Gradually increased and became a home for 100 elders. \n - Smt. Vasantlakshmi Nanalal Bhayani Jivan Sandhya Arogya Sushrushaa Dham (श्रीमती वसंतलक्ष्मी नानालाल भायाणी जिवन संध्या आरोग्य सुश्रुशा धाम): a new building established in 2004 operated through social support. \n - Building equipped with all the modern amenities. \n - Seva-Yatra (सेवा यात्रा) of noble social activities by serving and caring for aged is celebrating Golden Jubilee year in 2020 - completing 50 years.',
                  ),
                ),
                Container(
                  width: double.maxFinite,
                  child: AppLargeText(
                    text: '\n During Covid - 19 & Lockdown Period',
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
                        '- During the critical time of COVID 19 Ashram mates practice social distancing strictly. \n - By maintaining 6 feet distance from one onother. Even during the prayer time, meal time and recreation time Ashram mates maintain social distancing. \n - All Ashram mates compulsaraly wear mask and wash their hands freequently. \n - The active team of expert doctors in Ashram tace care of the Ashram mates by regular visits and health checkups.',
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
