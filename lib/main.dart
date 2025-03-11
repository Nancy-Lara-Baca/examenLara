import 'package:flutter/material.dart';

void main() {
  runApp(MiExamen());
}

class MiExamen extends StatelessWidget {
  const MiExamen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ejemplo de contenedores'),
          centerTitle: true,
          titleTextStyle:
              const TextStyle(color: Color(0xffffffff), fontSize: 25),
          backgroundColor: Colors.blue,
        ),
        body: ListView(
          padding: EdgeInsets.all(10),
          children: [
            Text("  Nancy Lara Baca Mat: 22308051281225",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                )),
            _buildTransportContainer(Icons.directions_car,
                'Esto es un carro, porque es un carro. Entonces es un carro y es un carro porque es un carro'),
            SizedBox(height: 10),
            _buildTransportContainer(Icons.directions_bike,
                'Esta es una bicicleta. Entonces esta es una bicicltea porque es una bicicleta'),
            SizedBox(height: 10),
            _buildTransportContainer(
                Icons.directions_boat, 'Este es un barco porque es un barco'),
            SizedBox(height: 10),
            _buildTransportContainer(Icons.directions_bus,
                'Este es un autobús porque es un autobús'),
            SizedBox(height: 10),
            _buildTransportContainer(
                Icons.train, 'Este es un tren. Entonces es un tren'),
            SizedBox(height: 10),
            _buildTransportContainer(Icons.directions_walk_rounded,
                'Este es un caminante porque esta caminando'),
          ],
        ),
      ),
    );
  }

  Widget _buildTransportContainer(IconData icon, String description) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          // Ícono del medio de transporte
          Padding(
            padding: EdgeInsets.all(15),
            child: Icon(
              icon,
              size: 40,
              color: Color(0xff5e5e5e), // Color del ícono
            ),
          ),
          // Descripción del medio de transporte
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                description,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
