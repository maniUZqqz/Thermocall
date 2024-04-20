import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Item extends StatefulWidget {

  Color backGrundColor ;
  Color textColor ;
  String name ;
  String time ;
  String temperature ;
  String minTemperature ;
  String maxTemperature ;
  Color circleColor ;

  Item({
    required this.backGrundColor,
    required this.textColor ,
    required this.name ,
    required this.time ,
    required this.temperature,
    required this.minTemperature ,
    required this.maxTemperature ,
    required this.circleColor
  });

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 5),
        child: Material(
          child: Container(
            child: Row(
              children: [
                Column(
                  children: [
                    Center(
                      child: Column(
                        children: [
                          Text(
                            widget.name,
                            style: TextStyle(
                                color: widget.textColor,
                                fontSize: 25
                            ),),
                          Text(
                              widget.time,
                              style: TextStyle(
                                  color: widget.textColor
                              )
                          )
                        ],
                      ),
                    )
                  ],
                ),
                const Spacer(),
                Text(widget.minTemperature as String,style: TextStyle(color: widget.textColor)),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Container(
                    child:Center(
                      child: Text(
                          widget.temperature as String,style: TextStyle(color: widget.textColor)
                      ) ,
                    ),
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: widget.circleColor
                    ),
                  ),
                ),
                Text(widget.maxTemperature as String,style: TextStyle(color: widget.textColor))
              ],
            ),
            padding: EdgeInsets.only(
              bottom: 10,
              top: 10,
              right: 5,
              left: 5,
            ),
            height: 100,
          ),
          borderRadius: BorderRadius.circular(8),
          color: widget.backGrundColor,
        ),
    );
  }
}
