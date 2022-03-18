import 'package:flutter/material.dart';
import 'package:winter_app/themes/app_theme.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              const SizedBox(height: 220),
              Center(child: Image.asset('assets/logo.png')),
              const SizedBox(height: 50),
              const _Form(),
              const SizedBox(height: 80),
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

          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, 'reset_password');
            },
            child: const Text('¿Olvidaste la contraseña?', style: TextStyle(color: Colors.white),),
          ),

          const SizedBox(height: 20),

          CheckboxListTile(
            value: true, 
            onChanged: (value) {},
            title: const Text('Recordad mi contraseña'),
          ),

          const SizedBox(height: 20),
          
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                elevation: 20,
                primary: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100))),
            onPressed: () {
              // Iniciar Sesión
              Navigator.pushNamed(context, 'profile');
            },
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 80),
              child: Text('INICIAR SESIÓN', style: TextStyle(color: AppTheme.primaryColor)),
            )
          ),

          TextButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, 'register');
            },
            child: const Text('Crear una cuenta nueva', style: TextStyle(color: Colors.white),),
          ),
        ],
      ),
    );
  }
}
