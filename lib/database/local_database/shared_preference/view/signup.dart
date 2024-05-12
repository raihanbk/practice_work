import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefSignUp extends StatefulWidget {
  const SharedPrefSignUp({super.key});

  @override
  State<SharedPrefSignUp> createState() => _SharedPrefSignUpState();
}

class _SharedPrefSignUpState extends State<SharedPrefSignUp> {

  late SharedPreferences preferences;

  final unameController = TextEditingController();
  final emailController = TextEditingController();
  final passController = TextEditingController();
  final rePassController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text(
            'Login!!!',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          TextFormField(
            controller: unameController,
            decoration: const InputDecoration(
                hintText: 'Username', border: OutlineInputBorder()),
          ),
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            controller: emailController,
            decoration: const InputDecoration(
                hintText: 'Email', border: OutlineInputBorder()),
          ),
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            controller: passController,
            decoration: const InputDecoration(
                hintText: 'Password', border: OutlineInputBorder()),
          ),
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            controller: rePassController,
            decoration: const InputDecoration(
                hintText: 'Re-enter password', border: OutlineInputBorder()),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(onPressed: () {
                storeSignUpData(emailController.text, passController.text);
              }, child: const Text('Sign up')),
            ],
          ),
        ]),
      ),
    );
  }

  void storeSignUpData(String email, String pass) async{
    preferences = await SharedPreferences.getInstance();
    preferences.setString('email', email);
    preferences.setString('pass', pass);

  }
}

