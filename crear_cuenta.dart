import 'package:flutter/material.dart';
import 'package:hack_mty/Home.dart';


class crear_cuenta extends StatelessWidget {
  get color => null;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
         backgroundColor: Color.fromARGB(255, 255, 255, 255),
        title: Text('Crear cuenta', style: TextStyle(color: Colors.black),),
        ),
      body: Column(
        
        children: [

          SizedBox(height: 51,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
            
          Container(
          height: 50,
          width:350,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 215, 209, 209),
            borderRadius: BorderRadius.all(Radius.circular(45)),
          ),
          child: TextField(
            decoration: InputDecoration(
              
              hintText: "Nombre(s)",
              contentPadding: EdgeInsets.symmetric(
                  vertical: 15.0, // Espaciado vertical para centrar
                  horizontal: 15.0, // Espaciado horizontal para centrar
              
            ),
            
            
          ),
          
        )
      )]),
        SizedBox(height: 51,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
            
          Container(
          height: 50,
          width:350,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 215, 209, 209),
            borderRadius: BorderRadius.all(Radius.circular(45)),
          ),
          child: TextField(
            decoration: InputDecoration(
              
              hintText: "Apellidos",
              contentPadding: EdgeInsets.symmetric(
                  vertical: 15.0, // Espaciado vertical para centrar
                  horizontal: 15.0, // Espaciado horizontal para centrar
              
            ),
            
            
          ),
          
        )
      )]),
        SizedBox(height: 51,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
            
          Container(
          height: 50,
          width:350,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 215, 209, 209),
            borderRadius: BorderRadius.all(Radius.circular(45)),
          ),
          child: TextField(
            decoration: InputDecoration(
              
              hintText: "Correo Electronico",
              contentPadding: EdgeInsets.symmetric(
                  vertical: 15.0, // Espaciado vertical para centrar
                  horizontal: 15.0, // Espaciado horizontal para centrar
              
            ),
            
            
          ),
          
        )
      )]),

       SizedBox(height: 35,),
       
       Text(
          'Fecha de nacimiento',
          style: TextStyle(
              fontSize: 18.0,           // Tamaño de fuente
              color: Colors.black,       // Color del texto
              
        )),

        SizedBox(
        height: 10,),
        
        Row(
          children: [
             SizedBox(
        width: 40,
      ),
            Container(
          height: 50,
          width: 100,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 215, 209, 209),
            borderRadius: BorderRadius.all(Radius.circular(45)),
          ),
          child: TextField(
            decoration: InputDecoration(
              
              hintText: "DD",
              contentPadding: EdgeInsets.symmetric(
                  vertical: 15.0, // Espaciado vertical para centrar
                  horizontal: 15.0, // Espaciado horizontal para centrar
              
            ),
            
            
          ),
          
        )
      ),
      SizedBox(
        width: 20,
      ),
      Container(
          height: 50,
          width:100,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 215, 209, 209),
            borderRadius: BorderRadius.all(Radius.circular(45)),
          ),
          child: TextField(
            decoration: InputDecoration(
              
              hintText: "MM",
              contentPadding: EdgeInsets.symmetric(
                  vertical: 15.0, // Espaciado vertical para centrar
                  horizontal: 15.0, // Espaciado horizontal para centrar
              
            ),
            
            
          ),
          
        )
      ),
      SizedBox(
        width: 25,
      ),
      Container(
          height: 50,
          width:100,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 215, 209, 209),
            borderRadius: BorderRadius.all(Radius.circular(45)),
          ),
          child: TextField(
            decoration: InputDecoration(
              
              hintText: "YYYY",
              contentPadding: EdgeInsets.symmetric(
                  vertical: 15.0, // Espaciado vertical para centrar
                  horizontal: 15.0, // Espaciado horizontal para centrar
              
            ),
            
            
          ),
          
        )
      )
          ],
        ),
         SizedBox(height: 51,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
            
          Container(
          height: 50,
          width:350,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 215, 209, 209),
            borderRadius: BorderRadius.all(Radius.circular(45)),
          ),
          child: TextField(
            decoration: InputDecoration(
              
              hintText: "Contraseña",
              contentPadding: EdgeInsets.symmetric(
                  vertical: 15.0, // Espaciado vertical para centrar
                  horizontal: 15.0, // Espaciado horizontal para centrar
              
            ),
            
            
          ),
          
        )
      )]),
       SizedBox(height: 51,),
          Row(
            children:[
            SizedBox(width: 218,),
          Container(
          height: 50,
          width:150,
          decoration: BoxDecoration(
            color: const Color(0xFFC90000),
            borderRadius: BorderRadius.all(Radius.circular(45)),
            ),
            
          child: TextButton(
            onPressed: () {
              creacionCuenta(context); // Llama a iniciarSesion sin argumentos
            },
            child: Text(
              'Crear cuenta',
              style: TextStyle(color:Colors.white)),
            ),
            
            )
            
          
          
        ]), 

         
]//todo va adentro de este.

       

    ));
  }
}

void creacionCuenta(BuildContext context){
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Home()),
  );

}