import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  final estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estilosubtitulo = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
          _crearImagen(),
          _crearTarjeta(),
          _crearAcciones(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
        ],
          ),
      ),
    );
  }

  Widget _crearImagen() {
    return Container(
      width: double.infinity,
      child: Image(
        image: NetworkImage(
            'https://haciendofotos.com/wp-content/uploads/las-mejores-fotos-de-paisajes-2020.jpg'),
            height: 250.0,
            fit: BoxFit.cover,
      ),
    );
  }

  Widget _crearTarjeta() {
    return SafeArea(
          child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Titulo de la tarjeta',
                    style: estiloTitulo,
                  ),
                  SizedBox(
                    height: 7.0,
                  ),
                  Text(
                    'Subtitulo de la tarjeta en gris',
                    style: estilosubtitulo,
                  ),
                ],
              ),
            ),
            Icon(
              Icons.star,
              color: Colors.red,
              size: 30.0,
            ),
            Text(
              '41',
              style: TextStyle(fontSize: 20.0),
            )
          ],
        ),
      ),
    );
  }

  Widget _crearAcciones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _accion(Icons.call, 'Llamar'),
        _accion(Icons.near_me, 'Rutas'),
        _accion(Icons.share, 'Compartir')
      ],
    );
  }

  Widget _accion(IconData icon, String text) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.blue,
          size: 40.0,
        ),
        SizedBox(height: 5.0),
        Text(
          text,
          style: TextStyle(fontSize: 15.0, color: Colors.blue),
        ),
      ],
    );
  }

  Widget _crearTexto() {
    return SafeArea(
          child: Container(
        padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 30.0),
        child: Text('Una de las mejores cosas de Flutter es que te permite personalizar las cosas como los widgets sin problemas, a tu gusto. Una de las mejores cosas de Flutter es que te permite personalizar las cosas como los widgets sin problemas, a tu gusto. Una de las mejores cosas de Flutter es que te permite personalizar las cosas como los widgets sin problemas, a tu gusto.',
        textAlign: TextAlign.justify,)
        ),
    );
  }
}
