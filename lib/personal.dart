import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:ui18theme/utils/text_utils.dart';

class Personal extends StatefulWidget {
  const Personal({Key? key}) : super(key: key);

  @override
  State<Personal> createState() => _PersonalState();
}

class _PersonalState extends State<Personal> {
  TextEditingController dateController = TextEditingController();
  String? selectedGender;
  TextUtils textUtils = TextUtils();
  final ImagePicker picker = ImagePicker();
  XFile? image;
  CroppedFile? _croppedFile;
  var path;
  File? selectedImage;
  

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child:
                      // Text(
                      //   'Personal Info',
                      //
                      //   style:
                      //   TextStyle(fontSize: 20,
                      //
                      //       fontWeight: FontWeight.bold),
                      // ),
                      textUtils.normal18(
                          "Personal Info", Colors.black, TextAlign.start),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_back_ios_rounded,
                    color: Colors.grey,
                  ),
                ),
                // Center(
                //
                //   child: Stack(
                //     children:  [
                //       CircleAvatar(
                //         radius: 50,
                //         backgroundImage: AssetImage('assets/images/salmanali.jpeg'),
                //
                //
                //
                //       ),
                //       Positioned(
                //         bottom: 6,
                //         right: 5,
                //         child: Icon(
                //
                //
                //             Icons.add_a_photo
                //         ),
                //       ),
                //
                //
                //     ],
                //
                //   ),
                // ),
                Stack(children: [
                 _croppedFile!=null?
                 Center(
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Container(
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            shape: BoxShape.circle,
                            image: image == null
                                ?  DecorationImage(
                                    image: FileImage(selectedImage!),
                                    fit: BoxFit.cover)
                                : DecorationImage(
                                    image: FileImage(File(image!.path)),
                                    fit: BoxFit.cover)),
                      ),
                    ),
                  ): Center(
                   child: Padding(
                     padding: EdgeInsets.all(20),
                     child: Container(
                       height: 120,
                       width: 120,
                       decoration: BoxDecoration(
                           color: Colors.grey,
                           shape: BoxShape.circle,
                           image: image == null
                               ? const DecorationImage(
                               image: AssetImage(
                                 'assets/images/avatar.jpg',
                               ),
                               fit: BoxFit.cover)
                               : DecorationImage(
                               image: FileImage(File(image!.path)),
                               fit: BoxFit.cover)),
                     ),
                   ),
                 ),
                  Positioned(
                          right: 120,
                          top: 100,
                          child: CircleAvatar(
                              backgroundColor: Colors.black,
                              radius: 20,
                              child: InkWell(
                                onTap: () {
                                  myAlert();
                                },
                                child: const Icon(Icons.camera_alt_sharp),
                              )),
                        ),
                ]),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            // Text(
                            //   'Full Name',
                            //   style: TextStyle(
                            //       fontSize: 20, fontWeight: FontWeight.bold),
                            // ),
                            textUtils.bold20(
                                'Full Name', Colors.black, TextAlign.start)
                          ],
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        TextField(
                          obscureText: false,
                          decoration: InputDecoration(
                              hintText: 'Enter full name',
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.black,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              border: OutlineInputBorder()),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: dateController,
                    style: TextStyle(color: Colors.blue),
                    keyboardType: TextInputType.text,
                    onTap: () async {
                      DateTime? date = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime.now(),
                          lastDate: DateTime(2050),
                          currentDate: DateTime.now(),
                          initialEntryMode: DatePickerEntryMode.calendar,
                          initialDatePickerMode: DatePickerMode.day,
                          builder: (context, child) {
                            return Theme(
                              data: Theme.of(context).copyWith(
                                  colorScheme: ColorScheme.fromSwatch(
                                primarySwatch: Colors.blue,
                                accentColor: Colors.black,
                                backgroundColor: Colors.black,
                                cardColor: Colors.white,
                              )),
                              child: child!,
                            );
                          });

                      dateController.text = DateFormat('MMM/dd/yyyy', "en_US")
                          .format(DateTime.now());
                    },
                    decoration: InputDecoration(
                      labelText: 'Date',
                      prefixIcon: Icon(Icons.date_range_rounded),
                      suffixIcon: Icon(Icons.add_circle),
                      hintText: "",
                      labelStyle: TextStyle(color: Colors.black),
                      hintStyle: TextStyle(color: Colors.black),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      border: Border.all(color: Colors.black, width: 1.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: DropdownButton<String>(
                        hint: Text('Select Gender'),
                        value: selectedGender,
                        isExpanded: true,
                        onChanged: (gen) {
                          setState(() {
                            selectedGender = gen;
                          });
                        },
                        items: ['Male', 'Female', "Select Gender"]
                            .map<DropdownMenuItem<String>>((gen) {
                          return DropdownMenuItem<String>(
                            value: gen.toString(),
                            child: Text(gen.toString()),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          // Text(
                          //   'Phone',
                          //   style: TextStyle(
                          //       fontSize: 20, fontWeight: FontWeight.bold),
                          // ),
                          textUtils.bold20(
                              'Phone', Colors.black, TextAlign.start)
                        ],
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: 'phone no',
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.blueAccent,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            border: OutlineInputBorder()),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            // Text(
                            //   'Email',
                            //   style: TextStyle(
                            //       fontSize: 20, fontWeight: FontWeight.bold),
                            // ),
                            textUtils.bold20(
                                'Email', Colors.black, TextAlign.start)
                          ],
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              hintText: 'Enter Email',
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.blueAccent,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              border: OutlineInputBorder()),
                        ),
                      ],
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    width: 350,
                    height: 60,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          backgroundColor: Colors.blue,
                          elevation: 0.0,
                          side: BorderSide(color: Colors.white)),
                      child: Text('Save',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          )),
                      onPressed: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context)=> const emailvf()),
                        // );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void myAlert() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            title: const Text('Please choose media to select'),
            content: SizedBox(
              height: MediaQuery.of(context).size.height / 6,
              child: Column(
                children: [
                  ElevatedButton(
                    //if user click this button, user can upload image from gallery
                    onPressed: () {
                      _pickedFile();
                    },
                    child: Row(
                      children: const [
                        Icon(Icons.image),
                        Text('From Gallery'),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      _pickedFile();
                    },
                    child: Row(
                      children: const [
                        Icon(Icons.camera),
                        Text('From Camera'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  Future getImage(ImageSource media) async {
    var img = await picker.pickImage(source: media);
    setState(() {
      image = img;
    });
  }

  void _pickedFile() async {
    final pickedFile = await ImagePicker().pickImage(
      source: ImageSource.camera,
    );
    setState(() {
      _cropImage(pickedFile!.path);
    });
    Navigator.pop(context);
  }

  _cropImage(filePath) async {
    _croppedFile = await ImageCropper().cropImage(
        sourcePath: filePath,
        maxWidth: 1080,
        maxHeight: 1080,
        aspectRatio: CropAspectRatio(ratioX: 1.0, ratioY: 1.0));

    if (_croppedFile != null) {
      path = _croppedFile!.path;
      selectedImage = File(path);
      print("Image Path: " + selectedImage!.path);

      setState(() {});
    }
  }

}
