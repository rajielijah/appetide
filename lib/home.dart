import 'package:appetide/color.dart';
import 'package:appetide/upload.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height: height,
            width: width,
            child: Padding(
              padding: const EdgeInsets.all(1.0),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('Explore', style: TextStyle(fontFamily: 'Kodchasan', fontWeight: FontWeight.bold, fontSize: 25),),
                      SizedBox(width: width/3,),
                      Icon(Icons.search, size: 30,),
                      SizedBox(width: width/20,),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Upload()));
                        },
                        child: Container(
                          height: height/16,
                          width: width/9,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(9)
                          ),
                          child: Image.asset('images/group43.png'),
                        ),
                      )
                    ],
                  ),
                Stack(
                  alignment: Alignment.topRight,
                  children: [
                    Image.asset('images/Rectangle5.png',),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Hottest Talents \n              Weekly', style: TextStyle(fontFamily:'Kodchasan', color: Colors.white, fontSize: 20,),),
                    ),
                    Positioned(
                      bottom: 50,
                      right: 17,
                      child: Text('New Talents', style: TextStyle(fontFamily:'Kodchasan', color: Colors.white,)))
                  ],
                ),
                Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('Top Talents', style: TextStyle(fontFamily: 'Kodchasan', fontWeight: FontWeight.bold, fontSize: 20),),
                    SizedBox(width: width/3,),
                    Text('See all  ', style: TextStyle(color: kPrimary[20], fontFamily: 'Kodchasan', fontSize: 15),),
                    // SizedBox(width: width/100,),
                    Icon(Icons.arrow_forward, color: kPrimary[20],)
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Image.asset('images/Rectangle4.png', width: width/3, height:height/5,),
                      Image.asset('images/Rectangle6.png', width: width/3, height: height/5,),
                      Image.asset('images/Rectangle7.png', width: width/3, height: height/5,),
                    ],
                  ),
                ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('Popular', style: TextStyle(fontFamily: 'Kodchasan', fontWeight: FontWeight.bold, fontSize: 20),),
                    SizedBox(width: width/2.3,),
                    Text('See all  ', style: TextStyle(color: kPrimary[20], fontFamily: 'Kodchasan', fontSize: 15),),
                    // SizedBox(width: width/0,),
                    Icon(Icons.arrow_forward, color: kPrimary[20],)
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Image.asset('images/Rectangle8.png', width: width/3, height: height/5),
                      Image.asset('images/Rectangle19.png', width: width/3, height: height/5),
                      Image.asset('images/Rectangle10.png', width: width/3, height: height/5),
                    ],
                  ),
                ),
                Container(
                  height: height/5,
                  width: width,
                  color: Colors.white,
                  child: 
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      SvgPicture.asset('images/Vector7.svg'),
                      SizedBox(width: width/29,),
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset('images/Ellipse7.png'),
                         SvgPicture.asset('images/Vect6.svg')
                        ],
                      ),
                      SizedBox(width: width/29,),
                      SvgPicture.asset('images/Vector6.svg'),
                      SizedBox(width: width/5,),
                      Text('Fendi - Blaqbones \n               ft Joeboy'),
                                    SizedBox(width: 12,),
                      SvgPicture.asset('images/Vecto6.svg')
                    ],),
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