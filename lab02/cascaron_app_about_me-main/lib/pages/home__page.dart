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
              'https://lh3.googleusercontent.com/PUIKDFCoxZSUSk2rDvCW-JhSvAz9PfacfdfSyHBNC9jjKx0jwhk3NF8M2AC_tZPkwdSxl6LhgnhPXXO9ESauw12Q2Nf16AwheOpLw43_H498oERp0qELFRBt-IIGQGTIcVdshgCFHliWUGECEkjjH3ay4rEserrASh6uT2LWXAoKd5wPop0z2-tV6KmVeAfpPDJosTPjB30fRsjWxb341ehquVjimc8iplqQeMed0FrHvl1B9t0qCXmTCCHs8wk7mBv_vcKGyrIHavb9dvBTfZY2kriUNrEsHXue6LbmTDuKuO7MZczql-6LpMBtF2qsxYGmx89vluPAn-sU7UdIDSJw-SqOagmhUB0jdp85kvd_W-dWO0n6qKAq01e5zDkFRbuMMjKNehkrl730oeYMDMGPwLvdMkrhVcdAxD1j_TjTRrbjeW-cuF2QCaKhi54TRbTfJFdWKV0VKW4VW-UFPvGqFyakp0vLcmBBoCxnpXfeZceiz8SxiwPPu2AM86iYOr5ZgcI4-tX5a--BZjPKL47iubuSKHBWhQdf4XZiTZke5pcfaG7_prV9lH4q4aPNKB49WKVVTIBq3FCC4eNDlzfyqT-Iu21QVhMpae6WUJWcNjmEG2_elwDPhBH3tJlsGz4EbajHg4UduGu7OmVRMa3-tEG-c2bx1HcHcNfGH1pmS8EemI867SYZkdkWTclUNR94dO-8BIHa1xe33byEWhK8wA=w949-h931-no?authuser=0'),
        ));
  }
}
