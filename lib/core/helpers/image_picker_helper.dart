import 'dart:developer';

import 'package:image_picker/image_picker.dart';

// handle image picker from camera or gallery
class ImagePickerHelper {
  static final ImagePicker _picker = ImagePicker();

  // Method to pick an image from the camera after checking permission
  static Future<XFile?> pickFromCamera() async {
    try {
      final XFile? image = await _picker.pickImage(source: ImageSource.camera);
      return image;
    } catch (e) {
      log("Error picking image from camera: $e");
      return null;
    }
  }

  // Method to pick an image from the gallery after checking permission
  static Future<XFile?> pickFromGallery() async {
    try {
      final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
      return image;
    } catch (e) {
      log("Error picking image from gallery: $e");
      return null;
    }
  }
}
