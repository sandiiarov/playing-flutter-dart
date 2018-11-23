import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;
import 'dart:convert';
import 'models/image_model.dart';
import 'widgets/image_list.dart';

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => AppState();
}

class AppState extends State<App> {
  int counter = 1;
  List<ImageModel> images = [];

  void fetchImage(id) async {
    var response = await get('https://jsonplaceholder.typicode.com/photos/$id');
    var parsedJson = json.decode(response.body);
    var image = ImageModel.fromJson(parsedJson);

    setState(() {
      counter++;
      images.add(image);
    });
  }

  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
          body: ImageList(images),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () => fetchImage(counter),
          ),
          appBar: AppBar(
            title: Text('Images'),
          )),
    );
  }
}
