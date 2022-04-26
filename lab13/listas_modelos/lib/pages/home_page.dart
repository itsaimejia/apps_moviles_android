import 'package:flutter/material.dart';
import 'package:listas_modelos/const/colors.dart';
import 'package:listas_modelos/const/list_info.dart';
import 'package:listas_modelos/models/student.dart';
import 'package:listas_modelos/pages/detail_student.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView.builder(
            itemCount: estudiantes.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              DetailStudent(estudiante: estudiantes[index])));
                },
                child: Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: buildCardStuden(estudiantes[index])),
              );
            }));
  }
}

Card buildCardStuden(Estudiante estudiante) {
  return Card(
    elevation: 5,
    color: Colors.white,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
    child: Container(
        alignment: Alignment.topLeft,
        height: 70,
        width: double.infinity,
        child: Row(
          children: [
            Container(
              height: double.infinity,
              width: 20,
              color: contrastColor,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    estudiante.nombreCompleto,
                    style: const TextStyle(color: infoColor, fontSize: 25),
                  ),
                  Text(
                    estudiante.matricula,
                    style: const TextStyle(color: subInfoColor, fontSize: 15),
                  ),
                ],
              ),
            ),
            const Spacer(),
            const Center(
              child: Icon(
                Icons.arrow_forward_ios_sharp,
                color: contrastColor,
                size: 20,
              ),
            )
          ],
        )),
  );
}
