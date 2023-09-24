import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  _ChatState createState() => _ChatState();
}
class _ChatState extends State<Chat> {
  final List<Widget> messages = [];
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
            top: 20,
            left: 0,
            right: 350,
            child: InkWell(
              onTap: Regresar,
              
              child: Image.asset(
                'assets/back.png', // Ruta de la imagen en assets
                  width: MediaQuery.of(context).size.width,
                  // Ajusta la imagen para que cubra el ancho de la pantalla
                ),
              ),
            ),

            Positioned(
              top: 30, // Ajusta la posición del texto sobre el círculo
              left: 30, // Ajusta la posición del texto sobre el círculo
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 65.0, // Ancho deseado para el SizedBox
                        ),
                        SizedBox(
                          width: 200, // Ancho deseado para el Container
                          height: 50, // Altura deseada para el Container
                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(65.0),
                              color: Color(0xFFD9D9D9),
                            ),
                            child: Text(
                              '<Chat>',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

                  Stack(
                    children: [
                      Positioned(
                        left: 20,
                        top: 100,
                        child: Container(
                          width: 350,
                          height: 500,
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                           
                            color: Color(0xFFD9D9D9),
                            border: Border.all(
                              color: Colors.black,
                              width: 2,
                            ),
                          ),
                          child: Container(
                            height: 180, // Altura fija para el contenedor del ScrollView
                            child: SingleChildScrollView(
                              physics: BouncingScrollPhysics(), // O ajusta según tus preferencias
                              child: Column(
                                children: [
                                  Container(
                                    width: 350,
                                    height: 500,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      color: Color(0xFFD9D9D9),
                                      border: Border.all(
                                        color: Colors.black,
                                        width: 2,
                                      ),
                                    ),
                                    child: Column(
                                      children: [
                                        // Mostrar mensajes de la conversación
                                        ...messages,
                                      ],
                                    ),
                                  ),
                                  
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  
        // Texto sobre la caja
        
            // Texto sobre el círculo
            Positioned(
              top: 620, // Ajusta la posición del texto sobre el círculo
              left: 45, // Ajusta la posición del texto sobre el círculo
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  
                  Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: Color(0xFFD9D9D9),
              ),
              child: SizedBox(
                width: 300,
                child: TextField(
                  obscureText: false,
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                    hintText: 'Escribe un mensaje',
                    hintStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // Cuando se presiona el botón para enviar un mensaje
                final newMessage = Text('Nuevo mensaje');
                setState() {
                  messages.add(newMessage);
                };
              },
              child: Text('Enviar'),
            ),
                 

                  
                 
                  
                  
                  
                  
                ],
              ),
            ),
          
        
          
        ],
      ),
      
      
      
    );
    

  }
    void Regresar() {
    // Your login logic goes here
    }

}