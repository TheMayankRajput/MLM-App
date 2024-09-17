import 'package:flutter/material.dart';
import 'package:mlm/passwordpage.dart';

class RegisterPage extends StatefulWidget {
  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  var mobile = TextEditingController();
  var otp = TextEditingController();
  var referal = TextEditingController();
  bool? ischecked = false;
  bool newvalue = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          alignment: Alignment.center,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
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
                    onChanged: (value) {
                      setState(() {});
                    },
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
                  height: 5,
                ),
                Container(
                  width: 150,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange.shade400,
                      ),
                      onPressed: mobile.text.isNotEmpty ? () {} : null,
                      // onPressed: () async {
                      //   var sharedprefer = await SharedPreferences.getInstance();
                      //   sharedprefer.setBool(SplashScreenState.KEYLOGIN, true);

                      //   Navigator.pushReplacement(context,
                      //       MaterialPageRoute(builder: (Context) => IntroPage()));
                      // },
                      child: Text(
                        'Generate OTP',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      )),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 250,
                  child: TextField(
                    keyboardType: TextInputType.phone,
                    controller: otp,
                    onChanged: (value) {
                      setState(() {});
                    },
                    decoration: InputDecoration(
                      hintText: 'OTP',
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
                    controller: referal,
                    onChanged: (value) {
                      setState(() {});
                    },
                    decoration: InputDecoration(
                      hintText: 'Referal Code',
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
                  width: 300,
                  child: Row(children: [
                    Checkbox(
                        value: ischecked,
                        onChanged: (bool? value) {
                          setState(() {
                            ischecked = value;
                          });
                        }),
                    Expanded(
                      child: Text(
                          "I have read and accepted the Terms & Conditions."),
                    )
                  ]),
                ),
                Container(
                  width: 150,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                      ),
                      onPressed: (ischecked != false &&
                              otp.text.isNotEmpty &&
                              referal.text.isNotEmpty)
                          ? () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: ((context) => PasswordPage())));
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
          ),
        ),
      ),
    );
  }
}
