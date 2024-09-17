import 'package:flutter/material.dart';
import 'package:mlm/dashboard.dart';

class PasswordPage extends StatefulWidget {
  @override
  State<PasswordPage> createState() => _PasswordPageState();
}

class _PasswordPageState extends State<PasswordPage> {
  var newpass = TextEditingController();
  var conpass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
              child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                child: Text(
              "Set Password",
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 30,
                  fontWeight: FontWeight.w700),
            )),
            SizedBox(height: 10),
            Container(
              width: 250,
              child: TextField(
                controller: newpass,
                obscureText: true,
                onChanged: (value) {
                  setState(() {});
                },
                decoration: InputDecoration(
                  hintText: 'New Password',
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
              child: TextField(
                controller: conpass,
                onChanged: (value) {
                  setState(() {});
                },
                decoration: InputDecoration(
                  hintText: 'Confirm Password',
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
              width: 150,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                  ),
                  onPressed:
                      (newpass.text.isNotEmpty && conpass.text.isNotEmpty)
                          ? () {
                              if (newpass.text.toString() ==
                                  conpass.text.toString()) {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: ((context) => Dashboard())));
                              } else {
                                showDialog(
                                    context: context,
                                    builder: (context) => AlertDialog(
                                          title: Text("Password doesn't match"),
                                          content: Text(
                                              "The password you entered is incorrect. Please try again!!"),
                                          actions: [
                                            TextButton(
                                                onPressed: () {
                                                  Navigator.of(context).pop();
                                                },
                                                child: Text("Close"))
                                          ],
                                        ));
                              }
                            }
                          : null,
                  // onPressed: () async {
                  //   var sharedprefer = await SharedPreferences.getInstance();
                  //   sharedprefer.setBool(SplashScreenState.KEYLOGIN, true);

                  //   Navigator.pushReplacement(context,
                  //       MaterialPageRoute(builder: (Context) => IntroPage()));
                  // },
                  child: Text(
                    'Next',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  )),
            ),
          ],
        ),
      ))),
    );
  }
}
