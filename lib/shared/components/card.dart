import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final double height;
  final Widget widget;
  final Color color;

  const MyCard({Key? key, required this.height, required this.widget, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return Padding(
     padding: const EdgeInsets.only(left: 8.0,right: 8.0),
     child: SizedBox(
       width: double.infinity,
       height: height,
       child: Card(
         color: color,
         shape:  const RoundedRectangleBorder(
           borderRadius: BorderRadius.all(Radius.circular(12)),
         ),
         child: widget ,
       ),
     ),
   );
  }

}