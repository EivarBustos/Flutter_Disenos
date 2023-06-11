import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Table(
      children:  const [
        TableRow(
          children: [
            _SingleCard(color: Colors.blue, icon: Icons.border_all_sharp, text:'General'),
            _SingleCard(color: Colors.yellow, icon: Icons.call_end_outlined, text:'Llamada'),
          ]
        ),

        TableRow(
          children: [
            _SingleCard(color: Colors.green, icon: Icons.access_alarm, text:'Alarma'),
            _SingleCard(color: Colors.red, icon: Icons.emergency_recording_outlined, text:'Emergencia'),
          ]
        ),

        TableRow(
          children: [
            _SingleCard(color: Colors.purple, icon: Icons.calculate, text:'Calculadora'),
            _SingleCard(color: Colors.grey, icon: Icons.numbers, text:'Numeros'),
          ]
        ),

        TableRow(
          children: [
            _SingleCard(color: Colors.white, icon: Icons.piano, text:'Piano'),
            _SingleCard(color: Colors.orange, icon: Icons.face_retouching_natural, text:'Cara'),
          ]
        ),


        
      ],
    );
  }
}
 // efectos de construccion de los widgets 
class _SingleCard extends StatelessWidget {
   final Color color;
   final IconData icon;
   final String text;

  const _SingleCard({
    Key? key, 
    required this.color,
    required this.icon, 
     required this.text
     }):super(key: key);

  @override
  Widget build(BuildContext context) {
  // HACE QUE EL FILTRO NO SE SOBREPONGA EN LOS WIDGETS
 
    return _CardBackground (child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children:  [
                // crear los iconos que van en la pantalla negra
      CircleAvatar(
      backgroundColor: this.color,
      child: Icon(this.icon, size: 35),
      radius: 30,
      ),
      SizedBox(height: 15),
      Text( this.text, style: TextStyle(color:this.color, fontSize: 18),)
       ],
      )
    );
  }
}
// efectos del fondo 
class _CardBackground extends StatelessWidget {
  final Widget child;

  const _CardBackground({super.key, 
  required this.child});

  @override
  Widget build(BuildContext context) {
   return Container(
      margin: EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        //BackdropFilter coloca un filtro pero es un poco pesado y consume memoria 
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            
            
            height: 180,
            decoration: BoxDecoration(
              color: Color.fromRGBO(62, 66, 107, 0.7),
              borderRadius: BorderRadius.circular(20)
            ),
            child: this.child,
          ),
        ),
      ),
    );
  }
}