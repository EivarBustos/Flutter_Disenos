import 'package:flutter/material.dart';

class CustomBottomNavigator extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
    showSelectedLabels: false,//Quita nombres de los labels
    showUnselectedLabels: false,//Quita nombres de los labels
    selectedItemColor: Colors.pinkAccent,
    backgroundColor: Color.fromRGBO(54, 57, 84, 1),
    unselectedItemColor: Color.fromRGBO(116, 117, 152, 1),
    items: const [
      BottomNavigationBarItem(
        icon: Icon(Icons.calendar_today_outlined),
        label:'Calendario'
      ),

      BottomNavigationBarItem(
        icon: Icon(Icons.pie_chart_outline),
        label:'Grafica'
      ),

      BottomNavigationBarItem(
        icon: Icon(Icons.supervised_user_circle),
        label:'Usuarios'
      ),

    ],
    );
  }
}