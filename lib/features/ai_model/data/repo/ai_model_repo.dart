

import 'package:tabibk/features/ai_model/service/http_service.dart';

class ImageRepository {
  final HttpService httpService;

  ImageRepository(this.httpService);

  Future<Map<String, dynamic>> uploadImage(String imagePath) {
    return httpService.uploadImage(imagePath);
  }
}
