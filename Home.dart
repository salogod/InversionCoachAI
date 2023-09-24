import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

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
              'assets/Logo_Banorte.png', // Ruta de la imagen en assets
              width: 150,
              height: 400, // Ajusta la imagen para que cubra el ancho de la pantalla
            ),
          ),
        ),
      ),

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
          // Imagen 
          Positioned(
            top: 30,
            left: 320,
            right: 20,
            child: InkWell(
              onTap: Perfil,
            
              child: Image.asset(
                'assets/usuario.png', // Ruta de la imagen en assets
                width: MediaQuery.of(context).size.width,
                // Ajusta la imagen para que cubra el ancho de la pantalla
              ),
            ),
          ),
            // Texto sobre el círculo
            Positioned(
              top: 30, // Ajusta la posición del texto sobre el círculo
              left: 30, // Ajusta la posición del texto sobre el círculo
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  SizedBox(height: 50),
                  Row(children:[
                    SizedBox(width: 28,),
                  Text("¡Hola, <nombre>!", style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold)),]),
                  const SizedBox(
                    height: 50,
                  ),
                  Container(
                    child: SizedBox(
                      width: 300,
                      height: 50,
                      child: Transform.translate(
                        offset: Offset(45.0, 0.0), // Ajusta el valor de '50.0' según tu preferencia
                        child: Text(
                          '¿Estás listo para navegar?',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  
                  
                  const SizedBox(
                    height: 90,
                  ),
                  Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Container(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Color(0xFFDB2014),
          onPrimary: Colors.black,
          elevation: 10,
          padding: const EdgeInsets.fromLTRB(90, 70, 100, 50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
        onPressed: Chat_general,
        child: const Text(
          'Chat general',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
    SizedBox(
      height: 100, // Espacio vertical entre los botones
    ),
  
  ],
),
                  
                  
                  
                  
                ],
              ),
            ),
          
        
          
        ],
      ),
      
      
      
    );
    

  }
  void Perfil() {
    // Your login logic goes here
  }
  void Chat_general() {
    // Your login logic goes here
  }

    void Graficas() {
    // Your login logic goes here
  }
}