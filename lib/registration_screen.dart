import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RegistrationScreen extends StatefulWidget {
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    initializeFirebase();
  }

  Future<void> initializeFirebase() async {
    await Firebase.initializeApp(
      name: 'BarHopWorms',
      options: const FirebaseOptions(
        appId: '103060877734',
        apiKey: 'AIzaSyDS89VzT6NOdaq2F6fcyQpuDcq1d5PBxXM',
        messagingSenderId: '103060877734',
        projectId: 'barhopworms',
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Firebase.initializeApp(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return Scaffold(
            appBar: AppBar(
              title: Text('Registration'),
            ),
            body: Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        labelText: 'Email',
                      ),
                    ),
                    SizedBox(height: 16.0),
                    TextField(
                      controller: _passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Password',
                      ),
                    ),
                    SizedBox(height: 20.0),
                    ElevatedButton(
                      child: Text('Register with Email/Password'),
                      onPressed: () async {
                        try {
                          String email = _emailController.text.trim();
                          String password = _passwordController.text.trim();

                          // Example registration logic with email and password
                          UserCredential userCredential =
                              await _auth.createUserWithEmailAndPassword(
                            email: email,
                            password: password,
                          );

                          User? user = userCredential.user;
                          if (user != null) {
                            // Registration successful, navigate to home screen or do something else
                          } else {
                            // Registration failed, handle the error
                          }
                        } catch (e) {
                          print('Failed to register with email/password: $e');
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
          );
        }

        // Show a loading spinner while waiting for Firebase initialization
        return CircularProgressIndicator();
      },
    );
  }
}
