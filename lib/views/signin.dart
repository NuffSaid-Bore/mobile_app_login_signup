import 'package:flutter/material.dart';
import 'package:mobile_app_login_signup/components/custom_scaffold.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

final _signInKey = GlobalKey<FormState>();
TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    const bool remember = true;
    return CustomScaffold(
      widget: Column(
        children: [
          const Expanded(
            flex: 1,
            child: SizedBox(
              height: 10,
            ),
          ),
          Expanded(
            flex: 8,
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                color: Colors.white,
              ),
              child: Form(
                key: _signInKey,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 2,
                    ),
                    Center(
                      child: Container(
                        height: 7,
                        width: 85,
                        decoration: BoxDecoration(
                          color: Colors.deepPurple[500],
                          borderRadius: const BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Text(
                        'Welcome Back! ',
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.deepPurple[700],
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 25, right: 25, top: 5, bottom: 5),
                      child: TextFormField(
                        controller: emailController,
                        decoration: InputDecoration(
                          label: const Text('Email'),
                          hintText: 'Enter Email Address',
                          hintStyle: TextStyle(
                            color: Colors.deepPurple[700],
                          ),
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                        ),
                        validator: (value) => value == null || value.isEmpty
                            ? 'Please enter valid email address'
                            : null,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 25, right: 25, top: 5, bottom: 5),
                      child: TextFormField(
                        obscureText: true,
                        obscuringCharacter: '*',
                        controller: passwordController,
                        decoration: InputDecoration(
                          label: const Text('Password'),
                          hintText: 'Enter Password',
                          hintStyle: TextStyle(
                            color: Colors.deepPurple[700],
                          ),
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                        ),
                        validator: (value) => value == null || value.isEmpty
                            ? 'Please enter password'
                            : null,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 15,
                                left: 25,
                                right: 25,
                              ),
                              child: Checkbox(
                                value: remember,
                                onChanged: (bool? value) {
                                  value = remember;
                                },
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(
                                top: 15,
                              ),
                              child: Text('Remember Me?'),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15, right: 25),
                          child: Text(
                            'Forgot Password?',
                            style: TextStyle(
                                color: Colors.deepPurple[700],
                                fontWeight: FontWeight.w900),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 50,
                        width: 250,
                        decoration: BoxDecoration(
                          color: Colors.deepPurple[700],
                          borderRadius: const BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            'S I G N  I N',
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                color: Colors.white,
                                fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Row(
                            children: [
                              const Text('Dont have an account? '),
                              Text(
                                'Sign up',
                                style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    color: Colors.deepPurple[700]),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 25,
                        right: 25,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Divider(
                              height: 5,
                              thickness: 2,
                              color: Colors.grey[800],
                            ),
                          ),
                          Text(
                            'or Sign in with',
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              color: Colors.grey[800],
                            ),
                          ),
                          Expanded(
                            child: Divider(
                              height: 5,
                              thickness: 2,
                              color: Colors.grey[800],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                          ),
                          child: Image.asset(
                            'assets/images/google-icon.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          height: 70,
                          width: 70,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                          ),
                          child: Image.asset(
                            'assets/images/instagram-splash.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                          ),
                          child: Image.asset(
                            'assets/images/facebook-icon.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
