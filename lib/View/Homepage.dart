import 'package:api_work2/Controller/constents.dart';
import 'package:api_work2/Controller/provider.dart';
import 'package:api_work2/View/page1.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

import '../Controller/fetchdata.dart';

int buttonindex = 0;

class HomePage extends StatelessWidget {
  HomePage({super.key});
  // List<Color> colors = [
  //   Colors.blue,
  //   Colors.amber,
  //   Colors.pink,
  //   Colors.green,
  //   Colors.teal,
  //   Colors.indigo,
  //   Colors.deepOrange,
  //   Colors.purple,
  //   Colors.lime,
  //   Colors.lightBlue
  // ];
  // List<String> images = [
  //   'https://igimages.gumlet.io/malayalam/gallery/actor/fahadfazil/poster.jpg?w=160&dpr=2.6',
  //   'https://igimages.gumlet.io/malayalam/gallery/actor/bijumenon/bijumenon4518.jpg?w=160&dpr=2.6',
  //   'https://www.filmibeat.com/ph-big/2011/10/venicile-vyaapari_131978304422.jpg',
  //   'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDqL68Smx6rlSFo2U4eq8gMapLGFewhHAJIg&usqp=CAU',
  //   'http://1.bp.blogspot.com/-EBuCFsjEJ1s/UptwXgrk-pI/AAAAAAAABrI/-P72leFXXdY/s1600/jagadish-102.jpg',
  //   'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvYUIdZSX8DNDIpo-xCjK1C2KWSdAhhOP6lJEGfWN-PAIXsG4fwS21r8CEvPuP-nMhBAw&usqp=CAU',
  //   'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFdwz84-P1j5IseFCScXcSozpASap8wUIa7A&usqp=CAU',
  //   'https://www.deccanherald.com/sites/dh/files/article_images/2019/10/18/shane%20nigam-1571372915.jpg',
  //   'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrhr5mtfPIKCK5zvz-pGfRRjXiULqYvha4oQ&usqp=CAU',
  //   'https://www.mrdustbin.com/en/wp-content/uploads/2021/06/jayasurya-1005x1024.jpg',
  // ];
  @override
  Widget build(BuildContext context) {
    return Consumer<DataProvider>(builder: (context, getdata, child) {
      getdata.fetchQuestion();
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 13, 49, 55),
          title: Row(
            children: [
              Text('PROFILES'),
              SizedBox(
                width: 220,
              ),
              CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://img.freepik.com/free-vector/hand-drawn-flat-profile-icon_23-2149070174.jpg?w=2000'),
              )
            ],
          ),
        ),
        backgroundColor:Color.fromARGB(255, 13, 49, 55),
        body: GridView.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 3 / 3,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20),
            itemCount: 10,
            itemBuilder: (BuildContext ctx, index) {
              // buttonindex = index;
              // print(buttonindex);
              return Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6hACoU9QhaFYUs3M49YGG5lUqlzt3tHMxTd9k9vN5NXqlLvveDkoMRQM2zVAdDmxZKj8&usqp=CAU',
                        ),
                        fit: BoxFit.fill),
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  children: [
                    TextButton(
                      onPressed: () {
                        buttonindex = index;
                        print('buttonindex = ${buttonindex}');
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Page1(
                                index: index,
                                String: [],
                              ),
                            ));
                      },
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(images[index]),
                        radius: 50,
                      ),
                    ),
                    Text(
                      getdata.Datas[index].name,
                      //  '${snapshot.data![index].name}',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    )
                  ],
                ),
              );
            }),
      );
    });
  }
}
