import 'dart:io';

import 'package:image_picker/image_picker.dart';

final picker = ImagePicker();

class ImagePickerHelper {
  Future<File?> getImage({required ImageSource source, required int imageQuality}) async {
    try {
      ImageSource src = source;
      int quality = imageQuality;
      PickedFile? pickedFile =
      // ignore: deprecated_member_use
      await picker.getImage(source: src, imageQuality: quality);
      return File(pickedFile!.path);
    } catch (e) {
      print(e);
    }
  }
}
