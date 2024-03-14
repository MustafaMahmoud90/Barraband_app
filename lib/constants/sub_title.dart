// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';

class SubTitle extends StatelessWidget {
  String text;
  double size;
  Color color;
  FontWeight weight;
  TextAlign align;

  SubTitle(
      {Key? key, 
      required this.text,
      required this.size,
      required this.color,
      required this.weight,
      this.align = TextAlign.center}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,

      // textAlign: align,
      style: TextStyle(
        color: color,
        fontFamily: 'ArbFONTS',
        fontSize: size,
        fontWeight: weight,
      ),
      maxLines: 3,

      overflow: TextOverflow.ellipsis,
    );
  }
}
