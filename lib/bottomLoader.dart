import 'package:flutter/material.dart';

class BottomLoader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
       alignment: Alignment.center,
       child: Center(
         child: SizedBox(
           width: 33.0,
           height: 33.0,
           child: CircularProgressIndicator(
             strokeWidth: 1.5,
           ),
         ),
       ),
    );
  }
}