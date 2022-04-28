// ignore_for_file: avoid_function_literals_in_foreach_calls

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:consumir_json_local/const/colors.dart';
import 'package:consumir_json_local/models/student.dart';
import 'package:consumir_json_local/pages/detail_student.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Estudiante> estudiantes = [];

  void fetchStudents() async {
    final String response = await rootBundle.loadString('assets/data.json');
    List<dynamic> studentMap = jsonDecode(response);
    setState(() {
      studentMap.forEach((element) {
        estudiantes.add(Estudiante.fromJson(element));
      });
    });
  }

  @override
  void initState() {
    fetchStudents();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: ListView.builder(
            itemCount: estudiantes.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () async {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              DetailStudent(estudiante: estudiantes[index])));
                },
                child: Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: buildCardStudent(estudiantes[index])),
              );
            }));
  }
}

Card buildCardStudent(Estudiante estudiante) {
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
