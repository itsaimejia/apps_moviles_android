import 'dart:async';

import 'package:flutter/material.dart';
import 'package:reloj/models/alarma.dart';

class Cronometer extends StatefulWidget {
  const Cronometer({Key? key}) : super(key: key);

  @override
  State<Cronometer> createState() => _CronometerState();
}

class _CronometerState extends State<Cronometer> {
  final listAlarmas = <Alarma>[];
  int contadorAlarmas = 0;
  int milisegundos = 0;
  late Timer timer;
  bool estaCorriendo = false;
  void iniciarCronometro() {
    if (!estaCorriendo) {
      timer = Timer.periodic(Duration(milliseconds: 100), (timer) {
        this.milisegundos += 100;
        setState(() {});
      });
      estaCorriendo = true;
    }
  }

  String formatearTiempo() {
    Duration duration = Duration(milliseconds: this.milisegundos);
    String dosValores(int valor) {
      return valor >= 10 ? "$valor" : "0$valor";
    }

    String horas = dosValores(duration.inHours);
    String minutos = dosValores(duration.inMinutes.remainder(60));
    String segundos = dosValores(duration.inSeconds.remainder(60));
    String milisegundos = dosValores(duration.inMilliseconds.remainder(1000));
    return "$minutos:$segundos.$milisegundos";
  }

  void detenerCronometro() {
    timer.cancel();
    estaCorriendo = false;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          formatearTiempo(),
          style: const TextStyle(fontSize: 50, color: Colors.white),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              child: const Text(
                'Iniciar',
                style: TextStyle(fontSize: 20),
              ),
              onPressed: iniciarCronometro,
              style: TextButton.styleFrom(
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(30),
                  primary: Colors.white,
                  backgroundColor: Colors.black),
            ),
            TextButton(
              child: Text("Detener"),
              onPressed: detenerCronometro,
              style: TextButton.styleFrom(
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(30),
                  primary: Colors.white,
                  backgroundColor: Colors.black),
            ),
            TextButton(
              child: Text("Vuelta"),
              onPressed: () {
                setState(() {
                  contadorAlarmas += 1;
                  listAlarmas.add(
                      Alarma('Alarma $contadorAlarmas', formatearTiempo()));
                });
              },
              style: TextButton.styleFrom(
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(30),
                  primary: Colors.white,
                  backgroundColor: Colors.black),
            ),
          ],
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: const ScrollPhysics(parent: null),
          reverse: true,
          itemBuilder: (context, int index) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(listAlarmas[index].idAlarma),
                Text(listAlarmas[index].tiempo)
              ],
            );
          },
          itemCount: contadorAlarmas,
        )
      ],
    );
  }
}
