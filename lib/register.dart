import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(232, 232, 230, 1),
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                child: Container(
                  margin: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(78, 130, 110, 1),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(175),
                      topRight: Radius.circular(175),
                      bottomRight: Radius.circular(175),
                      // ),
                      // gradient: LinearGradient(
                      //   begin: Alignment.bottomLeft,
                      // end: Alignment.topRight,
                      // colors: <Color>[
                      //   Color.fromRGBO(5, 3, 4, 1), //item
                      //   Color.fromRGBO(78, 130, 110, 1), // ijo
                      //   Color.fromRGBO(232, 232, 230, 1) //putih
                      // ],
                    ),
                  ),
                  child: Container(
                    margin: const EdgeInsets.all(30),
                    padding: const EdgeInsets.all(40),
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(232, 232, 230, 0.7),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(175),
                        topRight: Radius.circular(175),
                        bottomRight: Radius.circular(175),
                      ),
                    ),
                    child: SingleChildScrollView(
                        child: Form(
                      child: Column(
                        children: [
                          TextFormField(
                            //controller: usernameController,
                            decoration: const InputDecoration(
                              labelText: 'Username',
                            ),
                          ),
                          TextFormField(
                            //controller: usernameController,
                            decoration: const InputDecoration(
                              labelText: 'Full Name',
                            ),
                          ),
                          TextFormField(
                            obscureText: true,
                            // controller: passwordController,
                            decoration: const InputDecoration(
                              labelText: 'Password',
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(10),
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xFF0F0D02)),
                              child: const Text("Register"),
                            ),
                          )
                        ],
                      ),
                    )),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
