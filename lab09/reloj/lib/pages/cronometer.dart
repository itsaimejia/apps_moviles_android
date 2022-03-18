import 'dart:async';

import 'package:flutter/material.dart';
import 'package:reloj/models/vuelta.dart';

class Cronometer extends StatefulWidget {
  const Cronometer({Key? key}) : super(key: key);

  @override
  State<Cronometer> createState() => _CronometerState();
}

class _CronometerState extends State<Cronometer> {
  final listVueltas = <Vuelta>[];
  int contadorVueltas = 0;
  int milisegundos = 0;
  late Timer timer;
  bool estaCorriendo = false;

  TextStyle colorText(int i) {
    Color c = (i == 1)
        ? Colors.red
        : (i % 2 == 0)
            ? Colors.white
            : Colors.green;

    return TextStyle(fontSize: 25, color: c);
  }

  void iniciarCronometro() {
    if (!estaCorriendo) {
      timer = Timer.periodic(const Duration(milliseconds: 100), (timer) {
        milisegundos += 100;
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

    String dosValoresMili(int valor) {
      return valor == 0 ? "000" : "$valor";
    }

    String minutos = dosValores(duration.inMinutes.remainder(60));
    String segundos = dosValores(duration.inSeconds.remainder(60));
    String milisegundos =
        dosValoresMili(duration.inMilliseconds.remainder(1000));
    return "$minutos:$segundos:$milisegundos";
  }

  void detenerCronometro() {
    if (estaCorriendo) {
      timer.cancel();
      estaCorriendo = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: ListView(
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Container(
            padding: const EdgeInsets.only(top: 200, bottom: 100),
            alignment: Alignment.center,
            child: Text(
              formatearTiempo(),
              style: const TextStyle(fontSize: 100, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                  child: (estaCorriendo)
                      ? const Icon(
                          Icons.access_time_rounded,
                          size: 40,
                        )
                      : const Icon(
                          Icons.play_arrow_outlined,
                          size: 40,
                        ),
                  style: TextButton.styleFrom(
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(20),
                      primary: Colors.white,
                      backgroundColor:
                          (estaCorriendo) ? Colors.black : Colors.green),
                  onPressed: () {
                    setState(() {
                      if (estaCorriendo) {
                        contadorVueltas += 1;
                        listVueltas.add(Vuelta(
                            'Vuelta $contadorVueltas', formatearTiempo()));
                      } else {
                        iniciarCronometro();
                      }
                    });
                  },
                ),
                TextButton(
                  child: (estaCorriendo)
                      ? const Icon(
                          Icons.stop_outlined,
                          size: 40,
                        )
                      : const Icon(
                          Icons.refresh_outlined,
                          size: 40,
                        ),
                  onPressed: () {
                    setState(() {
                      if (estaCorriendo) {
                        detenerCronometro();
                      } else {
                        milisegundos = 0;
                        contadorVueltas = 0;
                        listVueltas.clear();
                      }
                    });
                  },
                  style: TextButton.styleFrom(
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(20),
                      primary: Colors.white,
                      backgroundColor:
                          (estaCorriendo) ? Colors.red[600] : Colors.blue[200]),
                ),
              ],
            ),
          ),
          Container(
            decoration: const BoxDecoration(
                border: Border(
              top: BorderSide(
                color: Colors.white,
                width: 0.5,
              ),
            )),
            child: ListView.builder(
              shrinkWrap: true,
              reverse: true,
              itemCount: contadorVueltas,
              itemBuilder: (context, int index) {
                return Container(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(width: 0.5, color: Colors.white)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        listVueltas[index].idVuelta,
                        style: colorText(index + 1),
                      ),
                      Text(listVueltas[index].tiempo,
                          style: colorText(index + 1))
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
