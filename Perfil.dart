import 'package:flutter/material.dart';

class Perfil extends StatefulWidget {
  const Perfil({Key? key}) : super(key: key);

  @override
  _PerfilState createState() => _PerfilState();
}
class _PerfilState extends State<Perfil> {
  bool mostrar = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        backgroundColor: Color(0xFFD9D9D9),
        flexibleSpace: Padding(
          padding: const EdgeInsets.only(top: 50, left: 50, right: 50),
          child: Container(
            child: Image.asset(
              'assets/Logo_de_Banorte.png', // Ruta de la imagen en assets
              width: 150,
              height: 400, // Ajusta la imagen para que cubra el ancho de la pantalla
            ),
          ),
        ),
      ),

      body: Stack(
        children: [
          Positioned(
            top: 50,
            left: 100,
            child: Image.asset(
                'assets/iconoUsuario.png', // Ruta de la imagen en assets
                width: 200,
                // Ajusta la imagen para que cubra el ancho de la pantalla
              ),

          ),
          Positioned(
          top:300,
          left: 90,
          child: Text(
                            '<Nombre Completo>',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),


          ),
          

          Positioned(
          top:350,
          left: 90,
          child: Text(
                            '<Correo electrónico>',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),


          ),

          Positioned(
          top:400,
          left: 90,
          child: Text(
              '<Fecha de nacimiento>',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),

          ),

          Positioned(
          top:450,
          left: 90,
          child: Text(
              '<Contraseña>',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),

          ),
          
          Positioned(
            top: 500,
            left: 145,
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  mostrar = !mostrar;
                });
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xFFDB2014), // Color de fondo del botón
              ),
              child: Text(
                mostrar ? "Ocultar": "Mostrar",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),


          // Círculo en la parte superior izquierda
          Positioned(
            top: 600,
            left: -600,
            child: Container(
              width: 1800, // Diámetro del círculo
              height: 700, // Diámetro del círculo
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFFC90000), // Color del círculo
              ),
            ),
          ),

          
        
          
        ],

        
      ),
      
      
      
    );
    

  }
 
}


void Mostrar(){
  
}