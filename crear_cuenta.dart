import 'package:flutter/material.dart';

Widget crear_cuenta() {
  return MaterialApp(
    title: 'Crea una nueva cuenta',
    theme: ThemeData(
      primarySwatch: MaterialColor(
        0xFFFFFFFF,
        <int, Color>{
          50: Colors.white,
          100: Colors.white,
          200: Colors.white,
          300: Colors.white,
          400: Colors.white,
          500: Colors.white,
          600: Colors.white,
          700: Colors.white,
          800: Colors.white,
          900: Colors.white,
        },
      ),
      scaffoldBackgroundColor: Colors.white,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    ),
    debugShowCheckedModeBanner: false,
    home: MyHomePage(),
  );
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String username = '';
  String email = '';
  String password = '';

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 100.0),
              Container(
                color: Colors.white,
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Crea una nueva cuenta',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Container(
                  margin: const EdgeInsets.only(top:60.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Nombre completo',
                      hintStyle: TextStyle(
                        color: Colors.black,
                      ),
                      fillColor: const Color(0xFFE3F4DF),
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(45.0)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    onChanged: (value) {
                      setState(() {
                        username = value;
                      });
                    },
                  ),
                ),
              ),
              Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Container( 
                      margin: const EdgeInsets.only(top: 20.0),

                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Nombre de usuario',
                          hintStyle: TextStyle(
                            color: Colors.black,
                          ),
                          fillColor: const Color(0xFFE3F4DF),
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(45.0)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                            ),
                          ),
                        ),
                        onChanged: (value) {
                          setState(() {
                            username = value;
                          });
                        },
                      ),
                    ),
                  ),


                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Container(
                      margin: const EdgeInsets.only(top: 20.0),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Correo electrónico',
                          hintStyle: TextStyle(
                            color: Colors.black,
                          ),
                          fillColor: const Color(0xFFE3F4DF),
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(45.0)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                            ),
                          ),
                        ),
                        onChanged: (value) {
                          setState(() {
                          username = value;
                          });
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Container(
                      margin: const EdgeInsets.only(top: 20.0),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Contraseña',
                          hintStyle: TextStyle(
                            color: Colors.black,
                          ),
                          fillColor: const Color(0xFFE3F4DF),
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(45.0)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                            ),
                          ),
                        ),
                        onChanged: (value) {
                          setState(() {
                            username = value;
                          });
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 30.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(const Color(0xFFE3F4DF)),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(45.0)),
                            ),
                          ),
                          padding: MaterialStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0)),
                        ),
                        child: Text(
                          'Cuenta Personal',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width * 0.03),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(const Color(0xFFE3F4DF)),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(45.0)),
                            ),
                          ),
                          padding: MaterialStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0)),
                        ),
                        child: Text(
                          'Cuenta Comercial',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30.0),
                  Center(
                    
                    child: Container(
                      color: Colors.black, // Cambia el color de la línea
                      height: 1.0, // Cambia la altura de la línea
                      width: MediaQuery.of(context).size.width * 0.9, // Cambia el ancho de la línea
                    ),
                  ),
            ],
          ),
        ),
      ),
    );
  }
}