import 'dart:convert';
import 'package:http/http.dart'as http;

class HttpRequestHandler{

static const String baseUrl = "http://";

//Helper method to make a Get request
static Future<Map<String, dynamic>> get(String endpoint)async {
  final response = await http.get(Uri.parse('$baseUrl/ $endpoint'));
  return handleResponse(response);
}

//Helper method to make a Post request
static  Future<Map<String, dynamic>> post(String endpoint,dynamic data) async {
  final response = await http.post(Uri.parse('$baseUrl/$endpoint'),
      body: json.encode(data));
  return handleResponse(response);
}

//helper method to make a put request
static Future<Map<String, dynamic>>put(String endpoint,dynamic data)async{
  final response = await http.put(Uri.parse('$baseUrl/$endpoint'),
      body: json.encode(data));
  return handleResponse(response);
}

//helper method to make a delete request
static Future<Map<String,dynamic>> delete(String endpoint)async{
  final response = await http.delete(Uri.parse('$baseUrl/$endpoint'));
  return handleResponse(response);
}

static Map<String,dynamic> handleResponse(http.Response response){
  if(response.statusCode == 200){
    return json.decode(response.body);
  }else{
    throw Exception('Failed to load data:${response.statusCode}');
  }
}
}