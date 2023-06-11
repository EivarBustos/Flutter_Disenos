
import 'package:flutter/material.dart';

class ScrollScreen extends StatelessWidget {
   
  const ScrollScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.5,0.5],
            colors: [
              Color(0xff5EE8C5),
              Color(0XFF30BAD6)
            ]
          )

        ),
      
       child: PageView(
      //physics: BouncingScrollPhysics(), estilo de pantalla final y inicio 
       physics: BouncingScrollPhysics(),
       scrollDirection: Axis.vertical,
       children: [
       Page1(),
       Page2()
          ],
        ),
      )
    );
  }
}







class Background extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff30BAD6),
      //height: double.infinity, tome todo el espacio posible
      height: double.infinity,
      alignment: Alignment.topCenter,
      child: Image(image: AssetImage('assets/scroll-1.png'))
      
      );
  }
}


class MainContent extends StatelessWidget {
  const MainContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //variable local y se coloca final por no va a cambiar 
    final textStyle = TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Colors.white);

    //SafeArea sirve para evitar que la informacion se salga de la pantalla
    return SafeArea(
      bottom: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20,),
          Text('11º', style: textStyle,),
          Text('Miercoles', style: textStyle,),
          //Expanded(child: Container()), coloca de extremo a extremo donde queda ubicado 
          Expanded(child: Container()),
          Icon(Icons.keyboard_arrow_down, size: 100, color: Colors.white,)
        ],
      ),
    );
  }
}


class Page1 extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
    //Fondo
    Background(),
    
    //Contenido
    MainContent()
      ],
    );
  }
}

class Page2 extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff30BAD6),
      child: Center(
      child: TextButton(
          
          child:Padding(
            padding: EdgeInsets.symmetric(horizontal: 60),
            child: Text('Bienvenido', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white) ),
          ),
          style: TextButton.styleFrom(
            backgroundColor: Color(0xff0098FA),
            shape: StadiumBorder()
          ),
          onPressed: (){}),
      ),
    );
  }
}