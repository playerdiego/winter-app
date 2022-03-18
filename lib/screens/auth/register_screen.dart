import 'package:flutter/material.dart';
import 'package:winter_app/themes/app_theme.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              const SizedBox(height: 150),
              Center(child: Image.asset('assets/logo.png')),
              const SizedBox(height: 50),
              const _Form(),
              const SizedBox(height: 50),
              Center(child: Image.asset('assets/winterhalter_logo.png')),
            ],
          ),
        ),
      ),
    );
  }
}

class _Form extends StatelessWidget {
  const _Form({Key? key}) : super(key: key);

  InputDecoration _inputDecoration(IconData icon, String text) {
    return InputDecoration(
      prefixIcon: Icon(
        icon,
        color: AppTheme.primaryColor,
      ),
      hintText: text,
      focusColor: AppTheme.primaryColor,
      hintStyle: const TextStyle(color: Colors.grey),
      enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey)),
      focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: AppTheme.primaryColor)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [

          TextFormField(
            cursorColor: AppTheme.primaryColor,
            obscureText: true,
            decoration: _inputDecoration(Icons.person, 'NOMBRE')
          ),

          const SizedBox(height: 20),


          TextFormField(
            cursorColor: AppTheme.primaryColor,
            keyboardType: TextInputType.emailAddress,
            decoration: _inputDecoration(Icons.email_outlined, 'EMAIL'),
            validator: (String?  value) {
              const String pattern =
                  r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

              RegExp regExp = RegExp(pattern);

              return regExp.hasMatch(value ?? '') ? null : 'Email Invalido';
            },
          ),

          const SizedBox(height: 20),

          TextFormField(
            cursorColor: AppTheme.primaryColor,
            obscureText: true,
            decoration: _inputDecoration(Icons.password_rounded, 'CONTRASEÑA')
          ),

          const SizedBox(height: 20),

          TextFormField(
            cursorColor: AppTheme.primaryColor,
            obscureText: true,
            decoration: _inputDecoration(Icons.password_rounded, 'REPITE LA CONTRASEÑA')
          ),

          const SizedBox(height: 40),
          
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                elevation: 20,
                primary: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100))),
            onPressed: () {
              // Iniciar Sesión
            },
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 80),
              child: Text('CREAR CUENTA', style: TextStyle(color: AppTheme.primaryColor)),
            )
          ),

          TextButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, 'login');
            },
            child: const Text('¿Ya tienes una cuenta? Iniciar Sesión', style: TextStyle(color: Colors.white),),
          ),
        ],
      ),
    );
  }
}
