import 'package:appetide/color.dart';
import 'package:appetide/home.dart';
import 'package:appetide/nav.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            // height: height,
            color: kPrimary,
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Icon(
                      Icons.arrow_back,
                      size: 35,
                    ),
                  ),
                  SizedBox(
                    height: height / 14,
                  ),
                  Center(
                    child: Text('Sign In',
                        style: TextStyle(
                            fontFamily: 'Kodchasan',
                            fontWeight: FontWeight.bold,
                            fontSize: 24)),
                  ),
                  SizedBox(
                    height: height / 44,
                  ),
                  Center(
                    child: Text(
                      'Welcome Back',
                      style: TextStyle(fontFamily: 'Kodchasan'),
                    ),
                  ),
                  SizedBox(
                    height: height / 23,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Container(
                      height: height / 7,
                      width: width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          // mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                CircleAvatar(
                                  backgroundColor: kPrimary[30],
                                  radius: 25,
                                ),
                                Image.asset('images/vector1.png')
                              ],
                            ),
                            SizedBox(
                              width: width / 30,
                            ),
                            Text(
                              'Username/Email',
                              style: TextStyle(fontFamily: 'Kodchasan'),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Container(
                      height: height / 7,
                      width: width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          // mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                CircleAvatar(
                                  backgroundColor: kPrimary[30],
                                  radius: 25,
                                ),
                                Image.asset('images/vector1.png')
                              ],
                            ),
                            SizedBox(
                              width: width / 30,
                            ),
                            Text(
                              'Password',
                              style: TextStyle(fontFamily: 'Kodchasan'),
                            ),
                            SizedBox(
                              width: width / 4,
                            ),
                            Icon(Icons.visibility)
                          ],
                        ),
                      ),
                    ),
                  ),
                  Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'Lost Your Password?',
                        style: TextStyle(
                            fontFamily: 'Kodchasan',
                            decoration: TextDecoration.underline),
                      )),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) => MyStatefulWidget()));
                        },
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                            padding:
                                EdgeInsets.symmetric(horizontal: 1, vertical: 18),
                            primary: kPrimary[10]),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Sign In',
                              style: TextStyle(fontFamily: 'Kodchasan', fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Icon(Icons.arrow_forward_outlined)
                          ],
                        )),
                  ),
                  Center(child: Text('Or Sign in with', style: TextStyle(fontFamily: 'Kodchasan'),)),

                  Padding(
                    padding: const EdgeInsets.all(38.0),
                    child: Align(
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CircleAvatar(child: Image.asset('images/search.png',), radius: 30, backgroundColor: Colors.white,),
                          CircleAvatar(
                            child: Image.asset('images/ector1.png',), radius: 30, backgroundColor: Colors.white
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
