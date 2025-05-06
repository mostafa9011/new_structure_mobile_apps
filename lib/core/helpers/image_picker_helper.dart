import 'dart:developer';
import 'dart:io';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

// handle image picker from camera or gallery
class ImagePickerHelper {
  static final ImagePicker _picker = ImagePicker();
  static final _deviceInfo = DeviceInfoPlugin();
  static PermissionStatus? _status;

  // Method to check and request camera permission
  static Future<bool> _handleCameraPermission() async {
    _status = await Permission.camera.status;

    if (_status!.isDenied || _status!.isRestricted) {
      _status = await Permission.camera.request();
    }

    return _status!.isGranted;
  }

  // Method to check and request gallery permission
  static Future<bool> _handleGalleryPermission() async {
    if (Platform.isAndroid) {
      final androidInfo = await _deviceInfo.androidInfo;

      if (androidInfo.version.sdkInt <= 32) {
        _status = await Permission.storage.request();
      } else {
        _status = await Permission.photos.request();
      }
    } else {
      _status = await Permission.photos.request();
    }

    return _status!.isGranted;
  }

  // Method to pick an image from the camera after checking permission
  static Future<XFile?> pickFromCamera() async {
    if (await _handleCameraPermission()) {
      try {
        final XFile? image =
            await _picker.pickImage(source: ImageSource.camera);
        return image;
      } catch (e) {
        log("Error picking image from camera: $e");
        return null;
      }
    } else {
      log('Camera permission denied.');
      return null;
    }
  }

  // Method to pick an image from the gallery after checking permission
  static Future<XFile?> pickFromGallery() async {
    if (await _handleGalleryPermission()) {
      try {
        final XFile? image =
            await _picker.pickImage(source: ImageSource.gallery);
        log('image: ${image!.name}');
        return image;
      } catch (e) {
        log("Error picking image from gallery: $e");
        return null;
      }
    } else {
      log('Storage permission denied.');
      return null;
    }
  }
}
