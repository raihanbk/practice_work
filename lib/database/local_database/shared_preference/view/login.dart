import 'package:flutter/material.dart';
import 'package:flutterfeb/database/local_database/shared_preference/view/signup.dart';
import 'package:flutterfeb/screens/home_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(
    const MaterialApp(
      home: SharedPrefLogin(),
    ),
  );
}

class SharedPrefLogin extends StatefulWidget {
  const SharedPrefLogin({super.key});

  @override
  State<SharedPrefLogin> createState() => _SharedPrefLoginState();
}

class _SharedPrefLoginState extends State<SharedPrefLogin> {

  final emailController = TextEditingController();
  final passController = TextEditingController();

  late SharedPreferences preferences;
  late bool loggedIn;

  @override
  void initState() {
    checkUserLogin();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text('Login!!!', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
          TextFormField(
            controller: emailController,
            decoration: const InputDecoration(
              hintText: 'Email',
                border: OutlineInputBorder()),
          ),
          const SizedBox(height: 20,),
          TextFormField(
            controller: passController,
            decoration: const InputDecoration(
                hintText: 'Password',
                border: OutlineInputBorder()),
          ),
          const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(onPressed: () {
                storeDataAndLogin(emailController.text, passController.text);
              },
                  child: const Text('Login')),
              ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (_)=> const SharedPrefSignUp()));
              }, child: const Text('SignUp'))
            ],
          ),
        ]),
      ),
    );
  }

  void storeDataAndLogin(String email, String pass) async{
    preferences = await SharedPreferences.getInstance();
    preferences.setString('email', email);
    preferences.setBool('loggedIn', true);
  }

  void checkUserLogin() async{
    preferences = await SharedPreferences.getInstance();
    loggedIn = preferences.getBool('loggedIn') ?? false;

    if(loggedIn == true) {
      Navigator.push(context, MaterialPageRoute(builder: (_)=> HomePage()));
    }
  }


}
