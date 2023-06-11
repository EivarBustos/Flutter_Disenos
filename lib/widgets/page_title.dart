import 'package:flutter/material.dart';

class PageTitle extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Container(
      margin: EdgeInsets.symmetric(horizontal: 25),
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       Text('Classify Transaction', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white)),
       SizedBox(height: 10),
       Text('Classify this Transaction into a particular category', style: TextStyle(fontSize: 17,  color: Colors.white)),
          ],
        ),
      ),
    );
  }
}