import 'package:flutter/material.dart';
import 'package:formulario/pages/index.dart';

void main() => runApp(const FormularioApp());

class FormularioApp extends StatefulWidget {
  const FormularioApp({Key? key}) : super(key: key);

  @override
  State<FormularioApp> createState() => _FormularioAppState();
}

class _FormularioAppState extends State<FormularioApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'Formulario', home: MyForm());
  }
}

class MyForm extends StatefulWidget {
  const MyForm({Key? key}) : super(key: key);

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  String name = '';
  String email = '';
  DateTime selectedDate = DateTime.parse("1997-04-23");

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? selected = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(1950),
      lastDate: DateTime(2021),
    );
    if (selected != null && selected != selectedDate) {
      setState(() {
        selectedDate = selectedDate;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/fondo.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(top: 100, left: 10, right: 10),
          child: ListView(scrollDirection: Axis.vertical, children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text('Create new\n  Account', style: TextStyle(fontSize: 40)),
                SizedBox(
                  height: 20,
                ),
                Text('Already Registered? Log in here',
                    style: TextStyle(fontSize: 20))
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // input nombre
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'NAME',
                          style: TextStyle(fontSize: 20),
                        ),
                        TextField(
                          style: const TextStyle(fontSize: 20),
                          keyboardType: TextInputType.name,
                          decoration: decorator(),
                          onChanged: (String name) =>
                              this.name = name.toString(),
                        )
                      ],
                    ), //termina input nombre
                    const SizedBox(
                      height: 20,
                    ),
                    //input email
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'EMAIL',
                          style: TextStyle(fontSize: 20),
                        ),
                        TextField(
                          style: const TextStyle(fontSize: 20),
                          keyboardType: TextInputType.emailAddress,
                          decoration: decorator(),
                          onChanged: (String email) =>
                              this.email = email.toString(),
                        )
                      ],
                    ), // termina input email
                    const SizedBox(
                      height: 20,
                    ),
                    //input password
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'PASSWORD',
                          style: TextStyle(fontSize: 20),
                        ),
                        TextField(
                            obscureText: true,
                            style: const TextStyle(fontSize: 20),
                            decoration: decorator())
                      ],
                    ), //termina input password
                    const SizedBox(
                      height: 20,
                    ),
                    //input date
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'DATE OF BIRTH',
                          style: TextStyle(fontSize: 20),
                        ),
                        TextField(
                          style: const TextStyle(fontSize: 20),
                          keyboardType: TextInputType.datetime,
                          decoration: InputDecoration(
                              hintText: 'Select',
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(3.0),
                                borderSide: const BorderSide(
                                    color: Colors.black, width: 2),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(3.0),
                                borderSide: const BorderSide(
                                    color: Colors.black, width: 2),
                              ),
                              fillColor: Colors.white,
                              filled: true,
                              suffixIcon: TextButton(
                                  onPressed: () {
                                    _selectDate(context);
                                  },
                                  child: const Icon(
                                    Icons.calendar_today,
                                    color: Colors.black,
                                  ))),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                      style: TextButton.styleFrom(
                          primary: Colors.white,
                          textStyle: const TextStyle(fontSize: 20),
                          backgroundColor: Colors.black,
                          minimumSize: const Size(double.infinity, 60)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SecondPage(
                                    name: this.name, email: this.email)));
                      },
                      child: const Text('Sing Up'),
                    )
                    //termina input date
                  ],
                )),
          ]),
        ),
      ),
    );
  }

  InputDecoration decorator() {
    return InputDecoration(
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(3.0),
        borderSide: const BorderSide(color: Colors.black, width: 2),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(3.0),
        borderSide: const BorderSide(color: Colors.black, width: 2),
      ),
      fillColor: Colors.white,
      filled: true,
    );
  }
}
