import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MoreVert extends StatefulWidget {
  const MoreVert({super.key});

  @override
  State<MoreVert> createState() => _MoreVertState();
}

class _MoreVertState extends State<MoreVert> {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      icon: Icon(
          Icons.more_vert,
          size: 35,
        ),
      color: Color(0xff0460D9),
      itemBuilder: (BuildContext context) => [
        PopupMenuItem(
            child:Row(
              children: [Text('Celcuis'),Spacer(),Icon(Icons.abc)],
            ),
            onTap: () {

            },
        ),
        PopupMenuItem(
            child:Row(
              children: [Text('Fahrenheit'),Spacer(),Icon(Icons.abc)],
            ),
            onTap: () {

          },
        ),
        PopupMenuItem(
            child:Row(
              children: [Text('Report Issue'),Spacer(),Icon(Icons.edit)],
            ),
            onTap: () {

          },
        ),
      ],
    );
  }
}
