import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class SubmissionController extends GetxController {
  TextEditingController nameController = TextEditingController();
  Uint8List? image;
  File? selectedIMage;

  //==================================> Gallery <===============================
  Future pickImageFromGallery() async {
    final returnImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (returnImage == null) return;

    selectedIMage = File(returnImage.path);
    image = File(returnImage.path).readAsBytesSync();
    update();
    Get.back(); //close the model sheet
  }

//==================================> Camera <===============================
  Future pickImageFromCamera() async {
    final returnImage =
        await ImagePicker().pickImage(source: ImageSource.camera);
    if (returnImage == null) return;

    selectedIMage = File(returnImage.path);
    image = File(returnImage.path).readAsBytesSync();
    update();
    // Get.back(); //
  }
}
