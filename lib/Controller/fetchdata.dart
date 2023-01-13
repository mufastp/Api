// import 'dart:convert';
// // ignore: depend_on_referenced_packages

// import 'package:http/http.dart' as http;

// import '../Model/modelclass.dart';


// Future<List<Question>> fetchQuestion() async {
//   final response = await http
//       .get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
//     print(response.statusCode);
//   if (response.statusCode == 200) {

//     return questionFromJson(response.body);
//   } else {
//     throw Exception('Failed to load album');
//   }
// }