import 'package:flutter/material.dart';

class Items extends StatelessWidget {
  const Items({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: Row(children: const [
          Expanded(child: CajaItem('assets/1.png', 'Vestido - \$50.00')),
          Expanded(child: CajaItem('assets/2.png', 'Chamarra - \$150.00')),
        ])),
        Expanded(
            child: Row(children: const [
          Expanded(child: CajaItem('assets/3.png', 'Sombrero - \$25.00')),
          Expanded(child: CajaItem('assets/4.png', 'Sueter - \$45.00')),
        ])),
        Expanded(
            child: Row(children: const [
          Expanded(child: CajaItem('assets/6.png', 'Pantalón - \$35.00')),
          Expanded(child: CajaItem('assets/5.png', 'Camisa - \$30.00')),
        ])),
      ],
    );
  }
}

class CajaItem extends StatelessWidget {
  final String img;
  final String text;

  const CajaItem(this.img, this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      height: double.infinity,
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Container(
          child: Image.asset(this.img),
          decoration: BoxDecoration(
              color: Colors.grey.shade300,
              border: Border.all(
                  color: Colors.grey, width: 7.0, style: BorderStyle.solid),
              borderRadius: const BorderRadius.all(
                Radius.circular(8),
              )),
        ),
        Text(this.text, style: const TextStyle(fontSize: 20))
      ]),
    );
  }
}
