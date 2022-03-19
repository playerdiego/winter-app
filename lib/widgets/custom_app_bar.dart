import 'package:flutter/material.dart';
import 'package:winter_app/themes/app_theme.dart';

class CustomAppBar {
  
  static AppBar appBar(GlobalKey<ScaffoldState> key, BuildContext context, {bool darkMode = false}) {
    return AppBar(
        backgroundColor: darkMode ? Colors.black : Colors.white,
        centerTitle: true,
        leading: Navigator.canPop(context) ? IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.navigate_before,
            color: darkMode ? Colors.white : Colors.black,
          ),
        ) : null,
        title: Image.asset(
          darkMode ? 'assets/logo.png' : 'assets/logo_black.png',
          height: 40
        ),
        actions: [
          Stack(
            children: [

              IconButton(
                onPressed: (){},
                icon: Icon(
                  Icons.notifications_none_outlined,
                  color: darkMode ? Colors.white : AppTheme.primaryColor,
                ),
              ),

              Positioned(
                bottom: 20,
                left: 10,
                child: Container(
                  height: 12,
                  width: 12,
                  padding: const EdgeInsets.all(1),
                  decoration: BoxDecoration(
                    color: darkMode ? AppTheme.primaryColor : Colors.black,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.white)
                  ),
                  child: const Center(
                    child: FittedBox(
                      child: Text('1', style: TextStyle(fontWeight: FontWeight.w900))
                    ),
                  ),
                ),
              ),


            ],
          ),

          IconButton(
            onPressed: () {
              key.currentState!.openEndDrawer();
            },
            icon: Icon(
              Icons.menu,
              color: darkMode ? Colors.white : Colors.black,
            ),
          )
          
        ],
    );
  }
}