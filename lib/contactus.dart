import 'package:contactus/contactus.dart';
import 'package:flutter/material.dart';

class contactpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red.shade50,
        appBar: AppBar(
          titleSpacing: 00.0,
          centerTitle: true,
          toolbarHeight: 40.2,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(360)),
          elevation: 0.00,
          backgroundColor: Colors.pinkAccent,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.home_outlined),
          ),
          title: Text(
            "Contact Us",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(
          child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Information',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    fontFamily: "Lato-Bold",
                    color: Colors.pink,
                  ),
                ),
                const Divider(
                  height: 10,
                  thickness: 5,
                  indent: 70,
                  endIndent: 70,
                  color: Colors.amber,
                ),
                SizedBox(height: 20),
                Container(
                  width: 300,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.pink)),
                    child: Text(
                      'Email : Fatinfadzilah98@gmail.com',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        fontFamily: "Lato-Bold",
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  width: 300,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.pink)),
                    child: Text(
                      'Github Username: fatinfadzilah98',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        fontFamily: "Lato-Bold",
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  width: 300,
                  height: 80,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.pink)),
                    child: Text(
                      'University:\nUniversity Malaysia Terengganu (UMT)',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        fontFamily: "Lato-Bold",
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ]),
        ),
        bottomNavigationBar: ContactUsBottomAppBar(
          companyName: 'fatin fadzilah',
          textColor: Colors.white,
          backgroundColor: Colors.pinkAccent,
          email: 'fatinfadzilah98@gmail.com',
        ),
      ),
    );
  }
}
