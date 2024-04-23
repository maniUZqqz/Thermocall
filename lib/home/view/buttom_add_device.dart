import 'package:flutter/cupertino.dart';


class ButtomAdd extends StatefulWidget {


  String textInButton ;
  Color buttonColor ;
  Color  textColor ;

  ButtomAdd({
    super.key,
    required this.textInButton,
    required this.textColor,
    required this.buttonColor,
  });

  @override
  State<ButtomAdd> createState() => _ButtomAddState();
}

class _ButtomAddState extends State<ButtomAdd> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          widget.textInButton,
          style: TextStyle(
              color: widget.textColor,
              fontSize: 18
          ),
        ),
      ),
      decoration: BoxDecoration(
          color: widget.buttonColor,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
              color: CupertinoColors.activeBlue,
              width: 2
          )
      ),
      height: 38,
      width: 133,
    );
  }
}



