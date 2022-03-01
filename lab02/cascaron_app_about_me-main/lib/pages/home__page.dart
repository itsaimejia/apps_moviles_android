import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text("Mi perfil"),
          ),
          backgroundColor: Colors.cyan,
        ),
        body: const SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Padding(
              padding:
                  EdgeInsets.only(left: 70, right: 70, top: 20, bottom: 50),
              child: Information(),
            )));
  }
}

class Information extends StatelessWidget {
  const Information({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        PhotoProfile(),
        Name(),
        UserName(),
        Description(),
      ],
    );
  }
}

class Description extends StatelessWidget {
  const Description({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: SizedBox(
          width: double.infinity,
          child: Center(
              child: Text(
                  'Me gusta todo tipo de musica, la comida salada, uno de mis hobbies es cocinar comidas que veo en internet. De la comida dulce me gusta el helado de vainilla y cajeta, me gusta tomar agua de orchata, té helado, soda y por salud agua. ',
                  style: GoogleFonts.robotoMono(fontSize: 20)))),
    );
  }
}

class UserName extends StatelessWidget {
  const UserName({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.cyan,
        width: double.infinity,
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Icon(
              Icons.people,
              color: Colors.black,
              size: 24.0,
            ),
            Text('@itsaimejia', style: GoogleFonts.robotoMono(fontSize: 30))
          ],
        ));
  }
}

class Name extends StatelessWidget {
  const Name({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.cyan,
        width: double.infinity,
        height: 50,
        child: Center(
          child: Text('Itsai Z. Mejia',
              style: GoogleFonts.robotoMono(fontSize: 30)),
        ));
  }
}

class PhotoProfile extends StatelessWidget {
  const PhotoProfile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(20),
        child: ClipOval(
          child: Image.network(
              'https://lh3.googleusercontent.com/WiTTZ5Jxt3vpptXKhknacahULhjEkG-HvccaJpQpHJftGzQtfXbTFIOoNywklvrQwATmia6Y3jl8P1Bth1JBuz9MkbMSNySSLhOV5m6c57YNyQ4GluFwVYjY9ztUAkGb0Zad_cLDys6OFAXZeRm_w3hBx2wZvYsb2Ge-nMLS7ePC4AbfyNRQaVAghMcRyqACRL_mHNyIkAHH3qgHnURQnw5QbA8heZw_1KAmRaic7rl4ySmhGnP9NRvyRBTd8qP__y-iUmUO1OsQfgt94hdRH2NzmMB6PorxTdgidfD577YxA1HwcwXKCXumEE6txxQHwAMlS6YcZuyd3CCPQs-9wSEpZCcf-ArqEvhF-Th8sZiqjRMehmC4SNPyDkDq-8KFG6lPnlJSYXFSKeUdD3REJrOE-IzzlKzklq4MtWNzgZbPWv-pVCS2x37pu3lN3LsZvA_w2AHPFp8Lhu9TTnegOgiNSARBkmP-MsaIJ3q57WcywfE7RPmIOHw-DT92CaPBZlYYPtqs3LRKEtN8sBqmymACLWjGusjh2jV0EIefGeZav3G3xU-abKyR25RWVqv2ICS-v9lHU9tRCQ_hscZcKbQQsMfNy0_KK0mL7VSvNSFx2-PpYaATbbRUmRl8c9L4iFimP1K8xpB9tmojisud8W_Pk5l7lSCwvZmpgxxIkUmoJCeNh4h9kMUtLSlTious6QzXL0Ersmw7DfHJjPFG376oSA=w949-h931-no?authuser=0'),
        ));
  }
}
