import 'package:flutter/material.dart';

class BuyProduct extends StatefulWidget {
  @override
  State<BuyProduct> createState() => _BuyProductState();
}

class _BuyProductState extends State<BuyProduct> {
  var search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue.shade700,
          title: Text(
            'Products',
            style: TextStyle(color: Colors.white, fontFamily: 'Poppins'),
          ),
          centerTitle: true,
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.blue.shade700,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  child: Center(
                    child: Container(
                      child: TextField(
                        controller: search,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          
                          )
                        ),
                      )
                    )
                  ),
                )
              ],
            )
          )
        ));
  }
}
