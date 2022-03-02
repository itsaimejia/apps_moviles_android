import 'package:flutter/material.dart';

class Items extends StatelessWidget {
  const Items({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(5),
      crossAxisSpacing: 2,
      mainAxisSpacing: 2,
      crossAxisCount: 2,
      children: const [
        Vestido(),
        Chamarra(),
        Sombrero(),
        Sueter(),
        Pantalon(),
        Camisa(),
      ],
    );
  }
}

class Camisa extends StatelessWidget {
  const Camisa({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
              flex: 25,
              child: Container(
                child: Image.asset('assets/6.png'),
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    border: Border.all(
                        color: Colors.grey,
                        width: 7.0,
                        style: BorderStyle.solid),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(8),
                    )),
              )),
          const Expanded(
              flex: 6,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Text("Camisa - \$30.00", style: TextStyle(fontSize: 20)),
              ))
        ],
      ),
    );
  }
}

class Pantalon extends StatelessWidget {
  const Pantalon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
              flex: 25,
              child: Container(
                child: Image.asset('assets/5.png'),
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    border: Border.all(
                        color: Colors.grey,
                        width: 7.0,
                        style: BorderStyle.solid),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(8),
                    )),
              )),
          const Expanded(
              flex: 6,
              child: Padding(
                padding: EdgeInsets.all(10),
                child:
                    Text("Pantalón - \$35.00", style: TextStyle(fontSize: 20)),
              ))
        ],
      ),
    );
  }
}

class Sueter extends StatelessWidget {
  const Sueter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
              flex: 25,
              child: Container(
                child: Image.asset('assets/4.png'),
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    border: Border.all(
                        color: Colors.grey,
                        width: 7.0,
                        style: BorderStyle.solid),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(8),
                    )),
              )),
          const Expanded(
              flex: 6,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Text("Sueter - \$45.00", style: TextStyle(fontSize: 20)),
              ))
        ],
      ),
    );
  }
}

class Sombrero extends StatelessWidget {
  const Sombrero({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
              flex: 25,
              child: Container(
                child: Image.asset('assets/3.png'),
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    border: Border.all(
                        color: Colors.grey,
                        width: 7.0,
                        style: BorderStyle.solid),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(8),
                    )),
              )),
          const Expanded(
              flex: 6,
              child: Padding(
                padding: EdgeInsets.all(10),
                child:
                    Text('Sombrero - \$25.00', style: TextStyle(fontSize: 20)),
              ))
        ],
      ),
    );
  }
}

class Chamarra extends StatelessWidget {
  const Chamarra({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
              flex: 25,
              child: Container(
                child: Image.asset('assets/2.png'),
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    border: Border.all(
                        color: Colors.grey,
                        width: 7.0,
                        style: BorderStyle.solid),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(8),
                    )),
              )),
          const Expanded(
              flex: 6,
              child: Padding(
                padding: EdgeInsets.all(10),
                child:
                    Text('Chamarra - \$150.00', style: TextStyle(fontSize: 20)),
              ))
        ],
      ),
    );
  }
}

class Vestido extends StatelessWidget {
  const Vestido({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
              flex: 25,
              child: Container(
                child: Image.asset('assets/1.png'),
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    border: Border.all(
                        color: Colors.grey,
                        width: 7.0,
                        style: BorderStyle.solid),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(8),
                    )),
              )),
          const Expanded(
              flex: 6,
              child: Padding(
                padding: EdgeInsets.all(10),
                child:
                    Text('Vestido - \$50.00', style: TextStyle(fontSize: 20)),
              ))
        ],
      ),
    );
  }
}
