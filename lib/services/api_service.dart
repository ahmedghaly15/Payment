import 'package:dio/dio.dart';
import 'package:payment/core/utils/api_keys.dart';

class ApiService {
  final Dio _dio = Dio();

  Future<Response> post({
    required body,
    required String url,
    String token = ApiKeys.secretKey,
    Map<String, String>? headers,
    String contentType = Headers.formUrlEncodedContentType,
  }) async {
    var response = await _dio.post(
      url,
      data: body,
      options: Options(
        contentType: contentType,
        headers: headers ?? {'Authorization': "Bearer $token"},
      ),
    );

    return response;
  }
}
