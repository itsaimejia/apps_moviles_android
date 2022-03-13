import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  final String name;
  final String email;

  const SecondPage({Key? key, required this.name, required this.email})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/fondo.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 200, left: 20),
            child: RichText(
              textAlign: TextAlign.justify,
              text: TextSpan(
                style: const TextStyle(
                  fontSize: 30.0,
                  color: Colors.black,
                ),
                children: <TextSpan>[
                  const TextSpan(text: 'Bienvenida/o '),
                  TextSpan(
                      text: '${capitalizeName()} \n',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      )),
                  const TextSpan(
                      text:
                          'enviaremos información a tu \ncorreo electrónico registrado\n'),
                  TextSpan(
                      text: email,
                      style: const TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          ),
        ));
  }

  String capitalizeName() {
    String res = '';
    for (var text in name.split(' ')) {
      res += text.substring(0, 1).toUpperCase() + text.substring(1) + ' ';
    }
    return res;
  }
}
