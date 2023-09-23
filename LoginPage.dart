import 'package:flutter/material.dart';

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
                'assets/logo_banorte.jpeg', // Ruta de la imagen en assets
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
                        onPressed: contrasena_olvidad(),
                        
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
                            primary: Color(
                                0xFFDB2014), // Set the button's background color to F2CAB4
                            onPrimary: Colors.black, // Set the text color
                            elevation: 10,
                            padding: const EdgeInsets.fromLTRB(10, 0.5, 10, 0.5),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                          ),
                          onPressed: iniciarSesion,
                          child: const Text(
                            'Iniciar sesion',
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

  void iniciarSesion() {
    // Your login logic goes here
  }

  contrasena_olvidad() {}
}