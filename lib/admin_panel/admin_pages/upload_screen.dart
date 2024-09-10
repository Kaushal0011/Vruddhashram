import 'dart:io';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:vruddhashram_admin/navigation_drawer/navigation_drawer.dart';
import 'package:http/http.dart' as http;

import '../../global.dart';

class UploadScreen extends StatefulWidget {
  const UploadScreen({Key? key}) : super(key: key);

  @override
  State<UploadScreen> createState() => _UploadScreenState();
}

class _UploadScreenState extends State<UploadScreen> {

  File? _image;
  final picker = ImagePicker();
  List<String> items = [
    'Amrit Mahotsav',
    'Awards',
    'Esteemed Guest',
    'Entertainment Activities',
    'Entertainment Hall',
    'Expert Lecture',
    'Gallery',
    'Health Care',
    'Kitchen',
    'Library',
    'Living Room',
    'Other Facilities',
    'Prayer Hall',
    'Publication',
    'Rest Room',
    'Social Activities',
    'Tiffin',
    'Tours'
  ];
  String itemSelected = 'gallery';
  TextEditingController nameController = TextEditingController();

  Future chooseImage()async{
    var pickedImage = await picker.getImage(source: ImageSource.gallery);
    setState((){
      _image = File(pickedImage!.path);
    });
  }

  Future uploadImage()async{
    final uri = Uri.parse("http://"+ip+"/application/uploadImage.php");
    var request = http.MultipartRequest('POST', uri);
    request.fields['name']=nameController.text;
    request.fields['dbname'] = itemSelected;
    request.fields['tmp'] = "temp para";
    var pic = await http.MultipartFile.fromPath('image', _image!.path);
    request.files.add(pic);
    var response = await request.send();
    print(request.fields);
    print(_image!.path);

    if(response.statusCode == 200){
        print("Image Uploaded");
        Fluttertoast.showToast(msg: "Image Uploaded");
    }
    else{
      print("Image not Uploaded");
      Fluttertoast.showToast(msg: "Image not Uploaded");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(labelText: 'Name'),
              ),
            ),
            IconButton(onPressed: (){
              chooseImage();
            }, icon: Icon(Icons.camera)),

            DropdownButtonFormField<String>(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(width: 3, color: Colors.blue),
                    )
                ),
                items: items.map((itemName) {
                  return DropdownMenuItem(
                    child: Text(itemName),
                    value: itemName,
                  );
                }).toList(),
                onChanged: (item) {
                  itemSelected = item.toString();
                  print(itemSelected);
                }),
            Container(
              child: _image == null ? Text('No Image Selected') : Image.file(_image!),
            ),
            SizedBox(
              height: 10,
            ),
            RaisedButton(onPressed: (){
              uploadImage();
            },
            child: Text('Upload Image'),),

          ],
        ),
      ),
    );
  }
}
