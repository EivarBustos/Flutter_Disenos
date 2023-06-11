import 'package:flutter/material.dart';

class BasicDesingScreen extends StatelessWidget {
   
  const BasicDesingScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      body: Column(
        children: [
        //Imagen  
        Image(image: AssetImage('assets/landscape.jpg')),
        //Titulo 
        Title(),
        //Botones share, call, route
        ButtonSection(),
        //descripcion
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Text('Do aute ullamco voluptate id in esse nulla amet labore culpa in magna sunt cupidatat.Aliquip ut quis velit officia est ullamco proident proident quis et in. Ipsum elit officia minim esse occaecatveniam exercitation nostrud reprehenderit voluptate minim.')
            
            )
        ],
      )
    );
  }
}



class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
       //
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),

      child: Row(
       
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            // Negrilla: style: TextStyle(fontWeight: FontWeight.bold
            Text('Oeschinen Lake Campground', style: TextStyle(fontWeight: FontWeight.bold)),
            Text('Kandersteg, Switzerland', style: TextStyle(color: Colors.black45),),
          ],
          ),

        //Expanded(child: Container()), toma todo el espacio libre para organizar los widgets
          Expanded(child: Container()),

          Icon(Icons.star, color: Colors.red ),

          Text('41')
          
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return     Container(
      // margin: const EdgeInsets.symmetric(horizontal: 40), sirve para juntar o separar los widgets
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
          
        children: const [
        CustomButton(icon: Icons.call, text: ('CALL')),   
        CustomButton(icon: Icons.route_outlined, text: ('ROUTE')),    
        CustomButton(icon: Icons.share, text: ('SHARE')),            
        ],
        
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
final IconData icon;
final String text;

  const CustomButton( {
    Key? key,
    required this.icon, 
    required this.text}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children:  [
    Icon(this.icon, color: Colors.blue, size: 30),
    Text(this.text,style: const TextStyle(color: Colors.blue))
      ],
    );
  }
}