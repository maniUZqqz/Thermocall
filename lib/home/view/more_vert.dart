import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MoreVert extends StatefulWidget {

  PopupMenuEntry popopuOne ;
  PopupMenuEntry popopuTwo ;
  PopupMenuEntry? popopuThree ;

  MoreVert({
    super.key,
    required this.popopuOne,
    required this.popopuTwo,
    this.popopuThree
  });

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
              color: Color(0xff002039),
          ),
          color: Color(0xff0460D9),
          itemBuilder: (BuildContext context) => [
            widget.popopuOne,
            widget.popopuTwo,
            if (widget.popopuThree != null ) widget.popopuThree!,
         ],
        );
  }
}
