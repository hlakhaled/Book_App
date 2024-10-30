import 'package:dio/dio.dart';

 class ApiService {
  const ApiService( this.dio);
  final Dio dio;
  final String url = "https://www.googleapis.com/books/v1/";
  Future<Map<String, dynamic>> get({required String endpoint}) async {
    final Response response = await dio.get("$url$endpoint");
    return response.data;
  }
}
