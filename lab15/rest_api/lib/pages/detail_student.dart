import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:rest_api/const/colors.dart';
import 'package:rest_api/models/student.dart';

class DetailStudent extends StatelessWidget {
  final Estudiante estudiante;
  const DetailStudent({Key? key, required this.estudiante}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detalle estudiante"),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        backgroundColor: appBarColor,
        elevation: 0.0,
      ),
      body: Container(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              buildCardName(name: estudiante.nombreCompleto),
              const SizedBox(
                height: 30,
              ),
              buildSubInfo(
                  icon: LineIcons.barcode,
                  title: 'Matricula',
                  information: estudiante.matricula),
              buildSubInfo(
                  icon: LineIcons.running,
                  title: 'Carrera',
                  information: estudiante.carrera),
              buildSubInfo(
                  icon: LineIcons.userClock,
                  title: 'Semestre',
                  information: estudiante.semestre.toString()),
              buildSubInfo(
                  icon: LineIcons.phone,
                  title: 'Teléfono',
                  information: estudiante.telefono),
              buildSubInfo(
                  icon: LineIcons.at,
                  title: 'Correo',
                  information: estudiante.correo)
            ],
          )),
    );
  }
}

Card buildCardName({required String name}) {
  return Card(
      elevation: 5,
      child: Container(
          padding: const EdgeInsets.all(10),
          height: 120,
          width: double.infinity,
          child: Row(
            children: [
              Container(
                  height: 80.0,
                  width: 80.0,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: contrastColor),
                  child: Center(
                    child: Text(
                      name.substring(0, 1),
                      style: const TextStyle(color: Colors.white, fontSize: 50),
                    ),
                  )),
              const SizedBox(
                width: 10,
              ),
              Text(
                name,
                style: const TextStyle(color: infoColor, fontSize: 25),
              )
            ],
          )));
}

Row buildSubInfo(
    {required IconData icon,
    required String title,
    required String information}) {
  return Row(
    children: [
      Icon(
        icon,
        color: subInfoColor,
        size: 30,
      ),
      Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Text(
            "$title :",
            style: const TextStyle(fontSize: 20, color: subInfoColor),
          )),
      Text(
        information,
        style: const TextStyle(
            color: infoColor, fontSize: 20, fontWeight: FontWeight.bold),
      )
    ],
  );
}
