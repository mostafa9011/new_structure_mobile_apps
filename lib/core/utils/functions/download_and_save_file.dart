import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_file_dialog/flutter_file_dialog.dart';
import 'package:path/path.dart' as path;

import '../../api/dio_factory.dart';
import '../../extensions/context_extension.dart';
import '../widgets/show_toast.dart';
import 'kprint.dart';

Future<void> downloadAndSaveFile({
  required BuildContext context,
  required String url,
  String? fileName,
  void Function(int, int)? onReceiveProgress,
}) async {
  // Create Dio instance for HTTP download
  final Dio dio = DioFactory.instance;

  try {
    // Download file as bytes
    final response = await dio.get<Uint8List>(
      url,
      options: Options(responseType: ResponseType.bytes),
    );
    final fileBytes = response.data!;

    // Show "Save As" dialog
    final params = SaveFileDialogParams(
      data: fileBytes,
      fileName: fileName ?? path.basename(url),
    );

    final savedPath = await FlutterFileDialog.saveFile(params: params);

    if (savedPath != null) {
      // Show success message
      showToast(
        context: context,
        type: ToastType.success,
        message: context.tr.success,
      );
    }
  }
  // Catch error
  catch (e) {
    kprint(e.toString());

    showToast(context: context, type: ToastType.error, message: e.toString());
  }
}
