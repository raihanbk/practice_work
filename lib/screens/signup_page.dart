import 'package:flutter/material.dart';
import 'package:flutterfeb/screens/login_page.dart';
import 'package:flutterfeb/utils/textThemes.dart';
import '../utils/mycolors.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  var formkey = GlobalKey<FormState>();

  // formkey used to monitor the state of entire form and validate it
  TextEditingController passController = TextEditingController();

  bool passVisibility = true;
  bool cPassVisibility = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          //to avoid scrollable action
          //physics: const NeverScrollableScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Form(
              key: formkey,
              // if we do not set key here validation will not occur
              child: Column(
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                  // Adding space at the top
                  Text("Sign up", style: MyTextThemes.textHeading),
                  const Text(
                    "Create an account it's free",
                    style: TextStyle(fontSize: 17),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.07,
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person_outline_outlined),
                      border: OutlineInputBorder(),
                      labelText: "Username",
                      hintText: 'Enter your Username here',
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    validator: (email) {
                      if (email!.isEmpty || !email.contains('@')) {
                        return "email must be a valid email";
                      } else {
                        return null;
                      }
                    },
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.person_outline_outlined),
                      border: OutlineInputBorder(),
                      labelText: "Email",
                      hintText: 'Enter your email here',
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    obscureText: passVisibility,
                    obscuringCharacter: '*',
                    validator: (password) {
                      if (password!.isEmpty || password.length < 6) {
                        return 'Password is empty or / check the length';
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.password_outlined),
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              passVisibility = !passVisibility;
                            });
                          },
                          icon: passVisibility
                              ? const Icon(Icons.visibility)
                              : const Icon(Icons.visibility_off)),
                      border: const OutlineInputBorder(),
                      labelText: "Password",
                      hintText: 'Enter your password here',
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    controller: passController,
                    obscureText: cPassVisibility,
                    obscuringCharacter: '*',
                    validator: (confirmPassword) {
                      if (confirmPassword!.isEmpty ||
                          confirmPassword != passController.text) {
                        return "password empty/mismatch";
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.password_outlined),
                      suffix: IconButton(
                        onPressed: () {
                          setState(() {
                            cPassVisibility = !cPassVisibility;
                          });
                        },
                        icon: cPassVisibility
                            ? const Icon(Icons.visibility)
                            : const Icon(Icons.visibility_off),
                      ),
                      border: const OutlineInputBorder(),
                      labelText: "Confirm Password",
                      hintText: 'Confirm your password here',
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  MaterialButton(
                    onPressed: () {
                      var valid = formkey.currentState!.validate();
                      if (valid == true) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginPage(),
                          ),
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("Registration failed"),
                          ),
                        );
                      }
                    },
                    color: MyColors.basicColor,
                    minWidth: MediaQuery.of(context).size.width * 0.7,
                    height: 50,
                    shape: const StadiumBorder(),
                    child: const Text("Register"),
                  ),
                  const SizedBox(height: 10), // Adjusted spacer
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Already have an account?'),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginPage(),
                            ),
                          );
                        },
                        child: Text(
                          "SignIn Here!!",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 16),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
