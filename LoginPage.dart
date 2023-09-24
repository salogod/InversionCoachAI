import 'package:flutter/material.dart';
import 'package:hack_mty/Home.dart';
import 'package:hack_mty/crear_cuenta.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr, // Puedes ajustar la dirección según tu necesidad
      child: Scaffold(
        body: Stack(
          children: [
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
           
            Positioned(
              top: 150  ,
              left: 0,
              child: Image.asset(
                'assets/Logo_de_Banorte.png', // Ruta de la imagen en assets
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover, // Ajusta la imagen para que cubra el ancho de la pantalla
              ),
            ),
            // Texto sobre el círculo
            Positioned(
              top: 30, // Ajusta la posición del texto sobre el círculo
              left: 30, // Ajusta la posición del texto sobre el círculo
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  SizedBox(height: 250),
                  Row(children:[
                    SizedBox(width: 50,),
                  Text("Iniciar Sesion", style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold)),]),
                  const SizedBox(
                    height: 50,
                  ),
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      color: Colors.white,
                    ),
                    child: const SizedBox(
                      width: 300,
                      height: 50,
                      child: TextField(
                        obscureText: false,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 10.0),
                          hintText: 'Usuario',
                          hintStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      color: Colors.white,
                    ),
                    child: const SizedBox(
                      width: 300,
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 10.0),
                          hintText: 'Contraseña',
                          hintStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 0,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 0,
                        
                      ),
                      
                      TextButton(
  onPressed: () {
    nuevoUsuario(context); // Llamamos a nuevoUsuario con el contexto
  },
  child: Container(
    color: Colors.white,
    child: Text(
      "Nuevo usuario?",
      style: TextStyle(
        color: Colors.black,
      ),
    ),
  ),
),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment
                        .center, // Center the button horizontally
                    children: [
                      SizedBox(
                        width: 100,
                        height:100,
                      ),
                      
                      Container(
  child: ElevatedButton(
    style: ElevatedButton.styleFrom(
      primary: Color(0xFFDB2014),
      onPrimary: Colors.black,
      elevation: 10,
      padding: const EdgeInsets.fromLTRB(10, 0.5, 10, 0.5),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
    ),
    onPressed: () {
      iniciarSesion(context); // Llama a iniciarSesion sin argumentos
    },
    child: const Text(
      'Iniciar sesión',
      style: TextStyle(
        color: Colors.white,
        fontSize: 16.0,
        fontWeight: FontWeight.bold,
      ),
    ),
  ),
),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  
                  
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void iniciarSesion(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Home()),
  );
}

  void nuevoUsuario(BuildContext context) {
  
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => crear_cuenta()), // Reemplaza RegistroPage con el nombre de tu clase de registro.
  );
}
}