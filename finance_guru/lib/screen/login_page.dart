import 'package:flutter/material.dart';
import 'package:finance_guru/screen/home_screen.dart';

// Public class
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  // This should return a private state, which is valid.
  @override
  _LoginPageState createState() => _LoginPageState();
}

// Private state class
class _LoginPageState extends State<LoginPage> {
  List<bool> isSelected = [true, false];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(255, 167, 232, 240),
            Color(0xFF0288D1)
          ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'FINANCE GURU',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),

                // Toogle Button

                ToggleButtons(
                  borderColor: Colors.white,
                  fillColor: const Color.fromARGB(255, 14, 86, 119),
                  borderWidth: 2,
                  selectedBorderColor: Colors.white,
                  selectedColor: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  onPressed: (int index) {
                    setState(() {
                      for (int i = 0; i < isSelected.length; i++) {
                        isSelected[i] = i == index;
                      }
                    });
                  },
                  isSelected: isSelected,
                  children: const [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.0),
                      child: Text("Log in"),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.0),
                      child: Text("Register"),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Container(
                  height: 380,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: const Color.fromARGB(97, 224, 237, 246),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 50, left: 8.0, right: 8.0, bottom: 8.0),
                    child: Column(
                      children: [
                        TextField(
                          style: const TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            labelText: 'Username',
                            labelStyle: const TextStyle(
                              color: Color.fromARGB(255, 247, 244, 244),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(color: Colors.white),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(
                                color: Color.fromRGBO(255, 255, 255, 1),
                              ),
                            ),
                          ),
                        ),

                        // pass

                        const SizedBox(height: 20),
                        TextField(
                          obscureText: true,
                          style: const TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            labelText: 'Password',
                            labelStyle: const TextStyle(color: Colors.white),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(color: Colors.white),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(color: Colors.blue),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Align(
                          alignment: Alignment.centerRight,
                          child: GestureDetector(
                            onTap: () {
                              //  forget password ko lagi
                            },
                            child: const Text(
                              'Forgot password?',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 33, 88, 160)),
                            ),
                          ),
                        ),
                        const SizedBox(height: 40),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return const HomeScreen();
                                },
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromARGB(
                                255, 14, 86, 119), // Button color
                            padding: const EdgeInsets.symmetric(
                                horizontal: 50, vertical: 15),
                          ),
                          child: const Text(
                            'Log in',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),

                        //For Register if needed

                        /* TextButton(
                          onPressed: () {
                            // for register logic
                          },
                          child: const Text(
                            'Register',
                            style: TextStyle(color: Colors.white),
                          ),
                        ), */
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void main() => runApp(
      const MaterialApp(
        home: LoginPage(),
      ),
    );
