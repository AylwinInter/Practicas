import 'package:flutter/material.dart';

Widget Imagenes() {
  return Column(
    children: [
      Container(
          padding: EdgeInsets.all(15),
          child: Center(
            child: Image.network(
                "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png",
                height: 130,
                width: 130),
          )),
      Container(
          child: Center(
        child: Image.network(
            "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png",
            height: 130,
            width: 130),
      )),
      Container(
          child: Center(
        child: Image.network(
            "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png",
            height: 130,
            width: 130),
      )),
    ],
  );
}
