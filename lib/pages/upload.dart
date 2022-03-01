import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/constants/constant_color.dart';
import 'package:untitled1/widget/upload_widget.dart';

class UploadPage extends StatefulWidget {
  const UploadPage({ Key? key }) : super(key: key);

  @override
  _UploadPageState createState() => _UploadPageState();
}

class _UploadPageState extends State<UploadPage> {
  File? file;
  @override
  Widget build(BuildContext context) {

    final fileName = file != null ? (file!.path) : 'No File Selected';

    return Scaffold(
      backgroundColor: bgHexColor,
      appBar: AppBar(
        backgroundColor: bgHexColor,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black, size: 30,),
          onPressed: (){
            Navigator.pop(context);
          },
          
        ),
        title: const Text(
          'Upload',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.w700
          ),
        ),
        centerTitle: true,
        elevation: 2,
      ),

      body: Container(
        margin: const EdgeInsets.only(top: 70),
        child: Column(
          children: [

            //Select File
            UploadWidget(
              icon: Icons.upload_file_sharp, 
              color: inputHexColor, 
              onClicked: _selectFile,
              text: 'Select File', 
              textColor: Colors.black,
            ),

            DisplayFileName(fileName),

            //Uplaod File
            const SizedBox(height: 40,),
            UploadWidget(
              icon: Icons.cloud_upload, 
              color: btnHexColor, 
              onClicked: (){

              }, 
              text: "Upload", 
              textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }

  Future _selectFile() async{
    
    final result = await FilePicker.platform.pickFiles(allowMultiple: false);
    if (result == null) return;

    final path = result.files.single.path!;
    setState(() {
      file = File(path);
    });
  }
}