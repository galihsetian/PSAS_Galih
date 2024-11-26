import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static String tag = 'home-page';

  @override
  Widget build(BuildContext context) {
    final profil = Hero(
      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: CircleAvatar(
          radius: 72.0,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/bboy.png'),
        ),
      ),
    );

    final welcome = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Selamat datang Boy',
        style: TextStyle(fontSize: 28.0, color: Colors.black),
      ),
    );

    final paragraf1 = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Halo, selamat datang di toko saya.',
        style: TextStyle(fontSize: 16.0, color: Colors.black),
      ),
    );

    final paragraf2 = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'toko saya menyediakan barang antik.',
        style: TextStyle(fontSize: 16.0, color: Colors.black),
      ),
    );

    final paragraf3 = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'ayo segara belanja di toko boboiboy .',
        style: TextStyle(fontSize: 16.0, color: Colors.black),
      ),
    );

    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(28.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Color.fromARGB(255, 253, 253, 253),
          Color.fromRGBO(30, 75, 179, 0.128),
          Color.fromRGBO(246, 100, 21, 0.957),
        ]),
      ),
      child: Column(
        children: <Widget>[profil, welcome, paragraf1, paragraf2, paragraf3],
      ),
    );

    return Scaffold(
      body: body,
    );
  }
}
