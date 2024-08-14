import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:listview_session/src/widgets/session_appbar.dart';

class Listview3 extends StatefulWidget {
  const Listview3({super.key});

  @override
  State<Listview3> createState() => _Listview3State();
}

class _Listview3State extends State<Listview3> {
  List photos = [];

  @override
  void initState() {
    super.initState();
    photos = [
      "https://i0.wp.com/picjumbo.com/wp-content/uploads/camping-on-top-of-the-mountain-during-sunset-free-photo.jpg?w=600&quality=80",
      "https://buffer.com/cdn-cgi/image/w=1000,fit=contain,q=90,f=auto/library/content/images/size/w1200/2023/10/free-images.jpg",
      "https://static.vecteezy.com/system/resources/thumbnails/024/493/735/small_2x/one-person-standing-on-mountain-peak-success-generated-by-ai-photo.jpg",
    ];
    log("photos list created !!");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size(1, 55), child: SessionAppbar()),
        body: ListView.separated(
            itemCount: photos.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Image.network(photos[index]),
                ],
              );
            },
            separatorBuilder: (context, index) {
                  return Text("data in separated list view $index");
              // return const Text("<><><><><><><><><>");
            }));
  }
}
