import 'package:flutter/material.dart';

import '../widgets/background.dart';
import 'package:disenos/widgets/card_table.dart';
import 'package:disenos/widgets/custom_bottom_navigation.dart';
import 'package:disenos/widgets/page_title.dart';

class HomeScreen extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      body: Stack(
      children: [
       //Fondo negro y cuadro rosado 
      Background(),
      // Cuerpo de la pantalla
      _HomeBody(),
       ],
      ),

      bottomNavigationBar: CustomBottomNavigator(),

    );
  }
}

class _HomeBody extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
       // Titulos 
       PageTitle(),

       // Card Table 
       CardTable()



        ],
      ),
    );
  }
}