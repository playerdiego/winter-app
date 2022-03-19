import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:winter_app/themes/app_theme.dart';
import 'package:winter_app/widgets/widgets.dart';

class ProfileScreen extends StatelessWidget {
   
  const ProfileScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>(); 

    return Scaffold(
      endDrawerEnableOpenDragGesture: true,
      key: scaffoldKey,
      endDrawer: BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
        child: Drawer(
            backgroundColor: Colors.white54,
            child: Column(
              children: [

                SafeArea(
                  child: Container(

                    alignment: Alignment.topRight,
                    height: 20,
                    width: double.infinity,
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.close, color: Colors.black),
                    ),
                
                  ),

                ),
              ],
            ),
        ),
      ),
      appBar: CustomAppBar.appBar(scaffoldKey, context),
      body: SingleChildScrollView(

        child: Column(
          children: [
            
            ColorDividers.blackWhite,
            const _Header(),

            const SizedBox(height: 110),

            const Text(
              'NIVEL PLATA',
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold
              ),
            ),

            const SizedBox(height: 40),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 4,
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100))),
                onPressed: () {
                  Navigator.pushNamed(context, 'login');
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(width: 10),
                      const Text(
                        'DESCARGAR SELLO DE GARANTÍA',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black
                        )
                      ),
                      Image.asset('assets/sello_oro.png')
                    ],
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 7,
                    primary: AppTheme.primaryColor,
                    minimumSize: const Size.fromHeight(50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100))),
                onPressed: () {
                  Navigator.pushNamed(context, 'login');
                },
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    'CERRAR SESIÓN',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white
                    )
                  ),
                ),
              ),
            ),
            

          ],
        ),

      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    final double height = size.height * .45;

    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
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
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [

             Text(
              'Bienvenido',
              style: TextStyle(
                  color: AppTheme.primaryColor,
                  fontWeight: FontWeight.w900,
                  fontFamily: 'Europa',
                  height: 1,
                  fontSize: 40
              ),
              textAlign: TextAlign.left,
            ),

             SizedBox(height: 50),

             Text(
              'DIEGO SEBASTIÁN',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Europa',
                  height: 1,
                  fontSize: 20,
                  letterSpacing: 1
              ),
              textAlign: TextAlign.left,
            ),

             SizedBox(height: 10),

            Text(
              'DISTRIBUIDOR',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Europa',
                  height: 1,
                  fontSize: 16,
                  letterSpacing: 1
              ),
              textAlign: TextAlign.left,
            ),


          ],
        ),
      ),

      Positioned(
        bottom: -90,
        child: Container(
          padding: const EdgeInsets.all(35),
          height: 180,
          width: 180,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(100),
            boxShadow: const [
              BoxShadow(color: Colors.black26, offset: Offset.zero, blurRadius: 20)
            ],
          ),

          child: Image.asset('assets/level_silver.png'),
        ),
      )
    ]);
  }
}
