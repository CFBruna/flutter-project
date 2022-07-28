import 'package:flutter/material.dart';
import 'package:share/share.dart';
// @dart=2.9

class GifPage extends StatelessWidget {
  final Map _gifData;
  const GifPage(this._gifData, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_gifData["title"]),
        backgroundColor: Colors.black,
        actions: [
          IconButton(
            icon: Icon(Icons.share),
            onPressed: (){
              Share.share(_gifData["images"]["fixed_heigth"]["url"]);

            },

          )
        ],
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Image.network(_gifData["images"]["fixed_heigth"]["url"]),
      ),
    );
  }
}
