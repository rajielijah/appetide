import 'package:appetide/color.dart';
import 'package:appetide/signin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class Registration extends StatelessWidget {
  const Registration({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(child: Scaffold(
      body: Container(
        color: kPrimary,
        height: height,
        width: width,
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // SvgPicture.asset('images/aimage2.svg'),
              Image(image: AssetImage('images/imagee2.png')),
              SizedBox(height: height/20,),
              Text('Dream Come True', style: TextStyle(fontFamily:'Kodchasan', fontStyle: FontStyle.italic),),
              SizedBox(height: height/4,),
              ElevatedButton(onPressed: (){}, 
                        style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)),
                               padding: EdgeInsets.symmetric(horizontal: 1, vertical: 18),
                              primary: kPrimary[20]),
                        child:  Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                'Sign Up',
                                style: TextStyle(fontFamily: 'Kodchasan'),
                              ),
                              Icon(Icons.arrow_forward_outlined)
                            ],
                          )),
                          SizedBox(height: height/18,),
                         ElevatedButton(onPressed: (){
                           Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Login()));
                         }, 
                        style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)),
                               padding: EdgeInsets.symmetric(horizontal: 1, vertical: 18),
                              primary: kPrimary[10]),
                        child:  Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                'Sign In',
                                style: TextStyle(fontFamily: 'Kodchasan'),
                              ),
                              Icon(Icons.arrow_forward_outlined)
                            ],
                          ))
            ],
          ),
        ),
      ),
    ));
  }
}