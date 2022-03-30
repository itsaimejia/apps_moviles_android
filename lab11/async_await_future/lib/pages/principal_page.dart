import 'package:async_await_future/pages/second_page.dart';
import 'package:flutter/material.dart';

class HomeApp extends StatefulWidget {
  @override
  State<HomeApp> createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  String name = '';
  String secondName = '';
  String email = '';

  String image =
      'https://ichef.bbci.co.uk/news/640/cpsprodpb/8536/production/_103520143_gettyimages-908714708.jpg';

  Future getImage() {
    return Future.delayed(
        const Duration(seconds: 5),
        () =>
            'https://www.hola.com/imagenes/mascotas/20200911175064/gatos-imagenes-curiosidades/0-864-253/gatos-t.jpg');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Primer pantalla'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.network(
                  image,
                  width: 100,
                  height: 100,
                ),
                BoxInfo(tittle: 'Nombre', value: name),
                BoxInfo(tittle: 'Apellido', value: secondName),
                BoxInfo(tittle: 'Correo', value: email),
                ElevatedButton(
                    onPressed: () async {
                      final data = await Navigator.push(context,
                          MaterialPageRoute(builder: (__) => SecondPage()));
                      setState(() {
                        name = data.name;
                        secondName = data.secondName;
                        email = data.email;
                      });
                      getImage().then((value) {
                        setState(() {
                          image = value;
                        });
                      });
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Text("Acceder"),
                        Icon(Icons.arrow_forward_ios),
                      ],
                    ))
              ],
            ),
          ),
        ));
  }
}

class BoxInfo extends StatelessWidget {
  const BoxInfo({
    Key? key,
    required this.tittle,
    required this.value,
  }) : super(key: key);

  final String value;
  final String tittle;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          "$tittle:",
          style: const TextStyle(fontSize: 20),
        ),
        Text(value, style: const TextStyle(fontSize: 20))
      ],
    );
  }
}
