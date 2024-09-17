import 'package:flutter/material.dart';
import 'package:mlm/dashboard.dart';
import 'package:mlm/forgotpasswordpage.dart';
import 'package:mlm/registerpage.dart';
// import 'package:second/IntroPage.dart';
// import 'package:second/splash_screen.dart';
// import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var mobile = TextEditingController();
  var pass = TextEditingController();
  bool isvisible = false;
  bool obs = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.account_circle,
                size: 150,
                color: Colors.blue,
              ),
              Container(
                width: 250,
                child: TextField(
                  keyboardType: TextInputType.phone,
                  controller: mobile,
                  decoration: InputDecoration(
                    hintText: 'Mobile No.',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        color: Colors.grey,
                        width: 2,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        color: Colors.blue,
                        width: 2,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 250,
                child: Column(
                  children: [
                    TextField(
                      controller: pass,
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: obs,
                      obscuringCharacter: "*",
                      decoration: InputDecoration(
                        hintText: 'Password',
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: Colors.grey,
                            width: 2,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: Colors.blue,
                            width: 2,
                          ),
                        ),
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                isvisible = !isvisible;
                                obs = !obs;
                              });
                            },
                            icon: Icon(isvisible
                                ? Icons.visibility
                                : Icons.visibility_off)),
                        suffixIconColor: isvisible ? Colors.green : Colors.red,
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) =>
                                        ForgotPasswordPage())));
                          },
                          child: Text(
                            "Forgot Password",
                            style: TextStyle(
                                color: Colors.blue.shade900,
                                decoration: TextDecoration.underline),
                          )),
                    ),
                  ],
                ),
              ),
              Container(
                width: 150,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (Context) => Dashboard()));
                    },
                    // onPressed: () async {
                    //   var sharedprefer = await SharedPreferences.getInstance();
                    //   sharedprefer.setBool(SplashScreenState.KEYLOGIN, true);

                    //   Navigator.pushReplacement(context,
                    //       MaterialPageRoute(builder: (Context) => IntroPage()));
                    // },
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    )),
              ),
              Container(
                width: 150,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange.shade400,
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => RegisterPage())));
                    },
                    // onPressed: () async {
                    //   var sharedprefer = await SharedPreferences.getInstance();
                    //   sharedprefer.setBool(SplashScreenState.KEYLOGIN, true);

                    //   Navigator.pushReplacement(context,
                    //       MaterialPageRoute(builder: (Context) => IntroPage()));
                    // },
                    child: Text(
                      'Register',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
