import 'package:flutter/material.dart';
import 'package:aswathannatask/api_call.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreen();
}

class _LoginScreen extends State<LoginScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/Log in.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 45.0),
              const Text(
                'Caring is the new marketing',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 35.0,
                  // fontFamily: 'Inter',
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 40.0),
                child: Text(
                  'Physiological respiration involves the mechanisms that ensure that the compositio',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14.0,
                    // fontFamily: 'Inter',
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 290.0),
              // const CircleAvatar(
              //   backgroundImage: AssetImage("assets/images/Rectangle_2188.png"),
              //   radius: 80.0,
              //   // child:
              // ),
              Padding(
                padding: const EdgeInsets.fromLTRB(40.0, 20.0, 40.0, 0.0),
                child: TextField(
                  controller: email,
                  decoration: InputDecoration(
                    contentPadding:
                        const EdgeInsets.fromLTRB(40.0, 17.0, 40.0, 17.0),
                    labelText: 'User ID',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40.0),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(40.0, 20.0, 40.0, 0.0),
                child: TextField(
                  //textAlign: TextAlign.center,
                  controller: password,
                  decoration: InputDecoration(
                    contentPadding:
                        const EdgeInsets.fromLTRB(40.0, 17.0, 40.0, 17.0),
                    //floatingLabelAlignment: FloatingLabelAlignment.center,
                    labelText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40.0),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(134, 0, 213, 1.0),
                    foregroundColor: Colors.white,
                    padding:
                        const EdgeInsets.fromLTRB(128.0, 15.0, 128.0, 15.0),
                  ),
                  onPressed: () async {
                    var result =
                        await ApiCall().apiCall(email.text, password.text);
                    if (result?.message == "Token Generated Successfully") {
                      Navigator.pushReplacementNamed(context, '/home');
                    } else {
                      showDialog(
                        context: context,
                        builder: (ctx) => AlertDialog(
                          title: const Text(
                            'Login Error',
                          ),
                          content: const Text(
                            "Kindly check the email or password whether it is correct!",
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(ctx);
                              },
                              child: const Text('Okay'),
                            ),
                          ],
                        ),
                      );
                    }
                  },
                  child: const Text('LOGIN'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
