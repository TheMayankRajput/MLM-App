import 'package:flutter/material.dart';
import 'package:mlm/buyproduct.dart';

class Dashboard extends StatefulWidget {
  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int current_index = 0;
  List<Widget> navigate = const [
    Icon(Icons.home),
    Icon(Icons.menu),
    Icon(Icons.person)
  ];
  String dropvalue = 'Dashboard';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue.shade700,
          title: Text(
            "Dashboard",
            style: TextStyle(fontFamily: 'Poppins', color: Colors.white),
          ),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.logout_rounded,
                  color: Colors.white,
                  size: 30,
                ))
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Container(
          height: 60,
          width: 60,
          child: FloatingActionButton(
            elevation: 8.0,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => BuyProduct()));
            },
            child: Icon(
              Icons.shopping_cart_rounded,
              size: 35,
              color: Colors.black,
            ),
            backgroundColor: Colors.yellow,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
            height: 60,
            color: Colors.white,
            // notchMargin: 8.0,
            // shape: CircularNotchedRectangle(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  child: IconButton(
                      style: IconButton.styleFrom(
                        backgroundColor: Colors.blue.shade700,
                      ),
                      // iconSize: 30,
                      onPressed: () {},
                      icon: Icon(
                        Icons.home,
                        color: Colors.white,
                      )),
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.person_rounded)),
                Icon(
                  Icons.home,
                  color: Colors.transparent,
                ),
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.account_tree_outlined)),
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.support_agent_sharp)),
              ],
            )),
        body: Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.blue.shade700,
            child: SingleChildScrollView(
                child: Column(children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    // color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          // Icon(
                          //   Icons.account_circle,
                          //   size: 80,
                          //   color: Colors.grey,
                          // ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Image.asset(
                                  'assets/images/test_pic.jpeg',
                                  width: 60,
                                )),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text("Test Singh",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Poppins',
                                          fontSize: 22,
                                          fontWeight: FontWeight.w800)),
                                  SizedBox(width: 10),
                                  Icon(
                                    Icons.verified,
                                    size: 30,
                                    color: Colors.lightGreen.shade300,
                                  )
                                ],
                              ),
                              Text("Username: testsingh01",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Poppins",
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ))
                            ],
                          )
                        ],
                      ),
                      Container(
                          child: Row(
                        children: [
                          Container(
                              child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.yellow.shade700),
                                onPressed: () {},
                                child: Text("View Profile",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Lato',
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                    ))),
                          )),
                          // SizedBox(width: 5),
                          Container(
                              child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.yellow.shade700),
                                onPressed: () {},
                                child: Text("Update Profile",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Lato',
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                    ))),
                          ))
                        ],
                      )),
                      SizedBox(height: 10),
                      Container(
                        width: 400,
                        height: 480,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 10.0,
                                spreadRadius: 2.0,
                              )
                            ]),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10.0, top: 8.0),
                              child: Row(
                                children: [
                                  Text(
                                    "Balance:",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'Poppins',
                                        fontSize: 20,
                                        fontWeight: FontWeight.w900),
                                  ),
                                  Expanded(child: SizedBox()),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.chevron_right,
                                            size: 30, color: Colors.black)),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Row(
                                children: [
                                  RichText(
                                      text: TextSpan(children: <TextSpan>[
                                    TextSpan(
                                        text: "Rs. ",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'Poppins',
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                        )),
                                    TextSpan(
                                        text: "5000",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'Lato',
                                          fontSize: 40,
                                          fontWeight: FontWeight.w100,
                                        )),
                                  ])),
                                  Expanded(child: SizedBox()),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10.0),
                                    child: Icon(Icons.account_balance_wallet,
                                        size: 60, color: Colors.indigo),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Text("Payment History",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'Lato',
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                      )),
                                  Expanded(child: SizedBox()),
                                ],
                              ),
                            ),
                            Container(
                              height: 310,
                              child: ListView(
                                scrollDirection: Axis.vertical,
                                children: [
                                  ListTile(
                                    leading: Icon(Icons.account_balance_wallet),
                                    title: Text("Wallet",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'Lato',
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                        )),
                                    subtitle:
                                        Text("Received on 18/09/2024 at 12:40",
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 10,
                                              fontFamily: 'Lato',
                                              fontWeight: FontWeight.w200,
                                            )),
                                    trailing: Text("+1500",
                                        style: TextStyle(
                                            color: Colors.green,
                                            fontFamily: 'Lato',
                                            fontWeight: FontWeight.w600,
                                            fontSize: 20)),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.account_balance_wallet),
                                    title: Text("Wallet",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'Lato',
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                        )),
                                    subtitle:
                                        Text("Received on 18/09/2024 at 12:40",
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 10,
                                              fontFamily: 'Lato',
                                              fontWeight: FontWeight.w200,
                                            )),
                                    trailing: Text("+5000",
                                        style: TextStyle(
                                            color: Colors.green,
                                            fontFamily: 'Lato',
                                            fontWeight: FontWeight.w600,
                                            fontSize: 20)),
                                  ),
                                  ListTile(
                                    leading:
                                        Icon(Icons.account_balance_outlined),
                                    title: Text("Bank Account",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'Lato',
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                        )),
                                    subtitle:
                                        Text("Sent on 18/09/2024 at 12:40",
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 10,
                                              fontFamily: 'Lato',
                                              fontWeight: FontWeight.w200,
                                            )),
                                    trailing: Text("-500",
                                        style: TextStyle(
                                            color: Colors.red,
                                            fontFamily: 'Lato',
                                            fontWeight: FontWeight.w600,
                                            fontSize: 20)),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.account_balance_wallet),
                                    title: Text("Wallet",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'Lato',
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                        )),
                                    subtitle:
                                        Text("Received on 18/09/2024 at 12:40",
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 10,
                                              fontFamily: 'Lato',
                                              fontWeight: FontWeight.w200,
                                            )),
                                    trailing: Text("+2000",
                                        style: TextStyle(
                                            color: Colors.green,
                                            fontFamily: 'Lato',
                                            fontWeight: FontWeight.w600,
                                            fontSize: 20)),
                                  ),
                                  ListTile(
                                    leading:
                                        Icon(Icons.account_balance_outlined),
                                    title: Text("Bank Account",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'Lato',
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                        )),
                                    subtitle:
                                        Text("Sent on 18/09/2024 at 12:40",
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 10,
                                              fontFamily: 'Lato',
                                              fontWeight: FontWeight.w200,
                                            )),
                                    trailing: Text("-500",
                                        style: TextStyle(
                                            color: Colors.red,
                                            fontFamily: 'Lato',
                                            fontWeight: FontWeight.w600,
                                            fontSize: 20)),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ]))));
  }
}
