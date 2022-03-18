import 'package:flutter/material.dart';
import 'package:winter_app/themes/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          const _Header(),
          const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  elevation: 20,
                  primary: AppTheme.primaryColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100))),
              onPressed: () {
                Navigator.pushNamed(context, 'login');
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.email_outlined),
                    SizedBox(width: 10),
                    Text('COMENZAR',
                        style: TextStyle(
                          fontSize: 18,
                        ))
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}

class _Header extends StatelessWidget {
  const _Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    final double height = size.height * .76;

    return Stack(children: [
      Image.asset(
        'assets/home_bg.jpg',
        fit: BoxFit.cover,
        height: height,
      ),
      Container(
        width: double.infinity,
        height: height,
        decoration: const BoxDecoration(
          color: Colors.black87,
        ),
      ),
      Container(
        height: height,
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Image.asset('assets/logo.png')),
            const SizedBox(height: 50),
            const Text(
              'EL LAVADO ES COSA NUESTRA',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  fontFamily: 'Europa',
                  height: 1,
                  fontSize: 30),
              textAlign: TextAlign.left,
            ),
            const SizedBox(height: 10),
            Container(
              height: 2,
              width: 200,
              color: AppTheme.primaryColor,
            ),
            const SizedBox(height: 10),
            const Text(
              'Una empresa familiar de tercera generación, sinónimo de soluciones profesionales en el sector del lavado, garantizando higiene, calidad y total fiabilidad. ',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      )
    ]);
  }
}
