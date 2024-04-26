import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'constants.dart';

//* Clase para gestionar las requests contra la api...
class DioChat {
  final Dio _dio = Dio();

  Dio get dio => _dio;

  DioChat() {
    _dio.options.baseUrl = '';
    _dio.options = BaseOptions(
      baseUrl: 'https://api.openai.com/v1/',
      headers: {
        'Content-Type' : 'application/json',
        'Authorization' : 'Bearer $openAIApiKey',
      },
    );
    _dio.interceptors.add(PrettyDioLogger(requestBody: true));
  }
}
