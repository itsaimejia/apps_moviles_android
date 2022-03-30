import 'package:async_await_future/models/information.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  String name = '';
  String secondName = '';
  String email = '';

  SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Segunda pantalla'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_outlined),
          onPressed: () {
            if (Navigator.canPop(context)) {
              Navigator.pop(context, Information(name, secondName, email));
            }
          },
        ),
      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(top: 100, left: 10, right: 10),
            child: ListView(scrollDirection: Axis.vertical, children: [
              Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'NOMBRE',
                            style: TextStyle(fontSize: 20),
                          ),
                          TextField(
                            style: const TextStyle(fontSize: 20),
                            keyboardType: TextInputType.name,
                            decoration: decorator(),
                            onChanged: (String name) => this.name = name,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      //input email
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'APELLIDO',
                            style: TextStyle(fontSize: 20),
                          ),
                          TextField(
                            style: const TextStyle(fontSize: 20),
                            keyboardType: TextInputType.emailAddress,
                            decoration: decorator(),
                            onChanged: (String secondName) =>
                                this.secondName = secondName,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
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
                            onChanged: (String email) => this.email = email,
                          )
                        ],
                      ),
                    ],
                  )),
            ]),
          ),
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
