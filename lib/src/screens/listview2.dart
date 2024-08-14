import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:listview_session/src/widgets/session_appbar.dart';

class Listview2 extends StatefulWidget {
  const Listview2({super.key});

  @override
  State<Listview2> createState() => _Listview2State();
}

class _Listview2State extends State<Listview2> {
  List photos = [];
  List desc = [];
  List colors = [];

  @override
  void initState() {
    super.initState();
    photos = [
      "https://i0.wp.com/picjumbo.com/wp-content/uploads/camping-on-top-of-the-mountain-during-sunset-free-photo.jpg?w=600&quality=80",
      "https://buffer.com/cdn-cgi/image/w=1000,fit=contain,q=90,f=auto/library/content/images/size/w1200/2023/10/free-images.jpg",
      "https://static.vecteezy.com/system/resources/thumbnails/024/493/735/small_2x/one-person-standing-on-mountain-peak-success-generated-by-ai-photo.jpg",
    ];
    desc = ["sky", "camera girl", "lonely sunset"];
    colors = [Colors.red, Colors.yellow, Colors.green];
    log("photos list created !!");
  }

  @override
  void dispose() {
    super.dispose();
    log("Bye...");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size(1, 55), child: SessionAppbar()),
        body: ListView.builder(
            itemCount: photos.length,
            itemBuilder: (context, index) {
              return InkWell(
                child: Image.network(photos[index],width: 500,),
                onTap: () {
                  log(desc[index]);
                },
                onDoubleTap: () {
                  log("Two Times");
                },
              );
            }));
  }
}
