import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import '../Model/modelclass.dart';

class DataProvider with ChangeNotifier {
  List<Question> Datas = [];

  fetchQuestion() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    print(response.statusCode);
    if (response.statusCode == 200) {
      Datas = questionFromJson(response.body);
      // return questionFromJson(response.body);
    } else {
      throw Exception('faild');
    }
    notifyListeners();
  }

  
}
