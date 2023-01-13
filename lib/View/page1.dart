import 'package:api_work2/Controller/constents.dart';
import 'package:api_work2/Model/modelclass.dart';
import 'package:api_work2/View/Homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:api_work2/Controller/provider.dart';
import 'package:provider/provider.dart';

class Page1 extends StatefulWidget {
  Page1({Key? key, required this.index, required List<String> String});
  final int index;

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  // final int index;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<DataProvider>(builder: (context, getdata, child) {
      // getdata.fetchQuestion();
      return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.black,
          ),
          body: Container(
            width: double.infinity,
            height: 400,
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(images[buttonindex]),
                        radius: 40,
                      ),
                    ),
                    Text(
                      getdata.Datas[buttonindex].name,
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Text(
                  'USERNAME : ${getdata.Datas[buttonindex].username}',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  'E MAIL : ${getdata.Datas[buttonindex].email}',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  'NUMBER : ${getdata.Datas[buttonindex].phone}',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  'ADDRESS',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                ),
                Text(
                  'CITY : ${getdata.Datas[buttonindex].address.city}',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  'STREET : ${getdata.Datas[buttonindex].address.street}',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  'SUITE : ${getdata.Datas[buttonindex].address.suite}',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ));
    });
  }
}
