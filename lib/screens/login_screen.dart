import 'package:flutter/material.dart';
import 'package:meet_up/app_home.dart';
import 'package:meet_up/services/auth_service.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool rememberPassword = false;
  bool error = false;
  String errorMsg = '';
  String? access_token;

  //* text controllers
  TextEditingController emailCtrl = TextEditingController();
  TextEditingController passwordCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Future<void> submit(String email, String password) async {
      if (email == "" || password == "") {
        return;
      } else {
        access_token = await Authorization().authenticate(email, password);
      }
    }

    void _showToast(BuildContext context) {
      final scaffold = ScaffoldMessenger.of(context);
      scaffold.showSnackBar(
        SnackBar(
          backgroundColor: Colors.red,
          content: Text(
            errorMsg,
            style: TextStyle(color: Colors.white),
          ),
          duration: Duration(milliseconds: 500),
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 18.0),
                child: Text(
                  "Promilo",
                  style: TextStyle(fontSize: 26),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 10 * 0.10,
                width: double.infinity,
              ),
              const Text('Hi, Welcome Back!',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.w800, color: Color.fromARGB(255, 66, 133, 70))),
              SizedBox(
                height: MediaQuery.of(context).size.height / 10 * 0.40,
                width: double.infinity,
              ),
              SizedBox(
                child: Padding(
                  padding: const EdgeInsets.only(right: 18.0, left: 18.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Please sign in to continue",
                        style: TextStyle(fontSize: 18, color: Colors.blue[400], fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                        child: Container(
                          height: MediaQuery.of(context).size.height / 10 * 0.6,
                          decoration: BoxDecoration(border: Border.all(), borderRadius: BorderRadius.circular(6)),
                          child: TextField(
                            controller: emailCtrl,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: MediaQuery.of(context).size.height / 10 * 0.08,
                                vertical: MediaQuery.of(context).size.height / 10 * 0.06,
                              ),
                              hintText: 'Email',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          const Spacer(),
                          Text(
                            "Sign in with OTP",
                            style: TextStyle(fontSize: 18, color: Colors.blue[400], fontWeight: FontWeight.bold),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),

              //*Password
              SizedBox(
                child: Padding(
                  padding: const EdgeInsets.only(right: 18.0, left: 18.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Password",
                        style: TextStyle(fontSize: 18, color: Colors.blue[400], fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                        child: Container(
                          height: MediaQuery.of(context).size.height / 10 * 0.6,
                          decoration: BoxDecoration(border: Border.all(), borderRadius: BorderRadius.circular(6)),
                          child: TextField(
                            controller: passwordCtrl,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: MediaQuery.of(context).size.height / 10 * 0.08,
                                vertical: MediaQuery.of(context).size.height / 10 * 0.06,
                              ),
                              hintText: 'Password',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Checkbox(
                              value: rememberPassword,
                              onChanged: (val) {
                                rememberPassword = val!;
                                // val = rememberPassword;
                                setState(() {});
                              }),
                          const Text(
                            "Remember me",
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                          const Spacer(),
                          Text(
                            "Forget password",
                            style: TextStyle(fontSize: 18, color: Colors.blue[400], fontWeight: FontWeight.bold),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              //* Submit button

              GestureDetector(
                onTap: () async {
                  if (!RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$').hasMatch(emailCtrl.text)) {
                    error = true;
                    errorMsg = "Incorrect Id or password!";
                    _showToast(context);
                    setState(() {});
                  } else {
                    await submit(emailCtrl.text, passwordCtrl.text);
                    if (access_token != '' && access_token != null) {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => AppHome()));
                    } else {
                      errorMsg = "Incorrect Id or password!";
                      _showToast(context);
                      setState(() {});
                    }
                  }
                },
                child: Container(
                  height: 45,
                  width: 180,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(6), color: Colors.blue),
                  child: Center(
                      child: Text(
                    'Submit',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  )),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 10 * 0.20,
                width: double.infinity,
              ),
              //*Division
              Stack(
                children: [
                  Divider(
                    color: Colors.grey[300],
                    indent: 18,
                    endIndent: 18,
                    thickness: 2,
                  ),
                  Positioned(
                      bottom: 1,
                      // top: 1,
                      left: MediaQuery.of(context).size.width / 2 - 16,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 15, left: 15),
                        child: Container(
                            color: Colors.white,
                            child: const Center(
                              child: Text(
                                "or",
                                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                            )),
                      )),
                ],
              ),

              //* direct signin logo
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 10 * 0.20,
                    bottom: MediaQuery.of(context).size.height / 10 * 0.20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                        ),
                        height: MediaQuery.of(context).size.height / 10 * 0.6,
                        width: MediaQuery.of(context).size.height / 10 * 0.6,
                        child: Image.asset('assets/logos/google.png'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                        ),
                        height: MediaQuery.of(context).size.height / 10 * 0.6,
                        width: MediaQuery.of(context).size.height / 10 * 0.6,
                        child: Image.asset('assets/logos/linkedin.png'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                        ),
                        height: MediaQuery.of(context).size.height / 10 * 0.6,
                        width: MediaQuery.of(context).size.height / 10 * 0.6,
                        child: Image.asset('assets/logos/facebook.png'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                        ),
                        height: MediaQuery.of(context).size.height / 10 * 0.6,
                        width: MediaQuery.of(context).size.height / 10 * 0.6,
                        child: Image.asset('assets/logos/instagram.png'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                        ),
                        height: MediaQuery.of(context).size.height / 10 * 0.6,
                        width: MediaQuery.of(context).size.height / 10 * 0.6,
                        child: Image.asset('assets/logos/whatsapp.png'),
                      ),
                    )
                  ],
                ),
              ),

              //*
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Bisuness User?",
                        style: TextStyle(
                          fontSize: 16,
                        )),
                    Text("Don't have any account",
                        style: TextStyle(
                          fontSize: 16,
                        )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Login Here",
                        style: TextStyle(fontSize: 16, color: Colors.blue[400], fontWeight: FontWeight.bold)),
                    Text("Sign UP",
                        style: TextStyle(fontSize: 16, color: Colors.blue[400], fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              //*
              const Spacer(),
              SizedBox(
                child: Column(
                  children: [
                    const Text("By continuing, you agree to",
                        style: TextStyle(
                          color: Color.fromARGB(255, 147, 195, 234),
                          fontSize: 14,
                        )),
                    RichText(
                      text: const TextSpan(
                        text: "Promilo's ",
                        style: TextStyle(fontSize: 14, color: Color.fromARGB(255, 147, 195, 234)),
                        children: <TextSpan>[
                          TextSpan(
                              text: "Terms of use & privacy policy",
                              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
