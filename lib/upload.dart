import 'package:appetide/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:dotted_border/dotted_border.dart';

class Upload extends StatelessWidget {
  const Upload({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: kPrimary,
        body: SingleChildScrollView(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.arrow_back_rounded),
                      Text(
                        'Upload Content',
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Kodchasan',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SvgPicture.asset('images/ecto6.svg')
                    ],
                  ),
                  SizedBox(height: height / 25),
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          padding:
                              EdgeInsets.symmetric(horizontal: 1, vertical: 1),
                          primary: kPrimary),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30)),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 40, vertical: 8),
                                  primary: Colors.white),
                              onPressed: () {},
                              child: Text(
                                'Music',
                                style: TextStyle(
                                    fontFamily: 'Kodchasan',
                                    color: kPrimary[20]),
                              )),
                          Text(
                            'Video',
                            style: TextStyle(
                                fontFamily: 'Kodchasan', color: Colors.black),
                          ),
                          Text(
                            'Product',
                            style: TextStyle(
                                fontFamily: 'Kodchasan', color: Colors.black),
                          ),
                        ],
                      )),
                       SizedBox(height: height / 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        backgroundColor: kPrimary[20],
                        child: Text('1'),
                      ),
                      SvgPicture.asset('images/line17.svg'),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: kPrimarys),
                            shape: BoxShape.circle),
                        child: CircleAvatar(
                          child: Text(
                            '2',
                            style: TextStyle(color: Colors.black),
                          ),
                          backgroundColor: kPrimary,
                        ),
                      ),
                      SvgPicture.asset('images/line17.svg'),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: kPrimarys),
                            shape: BoxShape.circle),
                        child: CircleAvatar(
                          child: Text(
                            '3',
                            style: TextStyle(color: Colors.black),
                          ),
                          backgroundColor: kPrimary,
                        ),
                      ),
                    ],
                  ),
                   SizedBox(height: height / 25),
                  DottedBorder(
                    color: kPrimarys,
                    strokeWidth: 3,
                    child: Container(
                      height: height / 3,
                      width: width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: kPrimary),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SvgPicture.asset('images/upload2.svg'),
                          Text('Upload Music File'),
                          Text(
                            'BROWSE',
                            style: TextStyle(color: kPrimarys, decoration: TextDecoration.underline),
                          )
                        ],
                      ),
                    ),
                  ),
                   SizedBox(height: height / 30),
                  Text(
                    'MAX SIZE: 10MB',
                    style: TextStyle(),
                  ),
                   SizedBox(height: height / 25),
                  Text(
                    'SONG TITLE',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                   SizedBox(height: height / 45),
                  Container(
                      width: width,
                      height: height / 13,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: kPrimarys,
                            // width: 5,
                          ),
                          borderRadius: BorderRadius.circular(5),
                          color: kPrimary),
                      child: TextFormField(
                        decoration: InputDecoration(
                            labelText: '     e.g The Mountains',
                            labelStyle: TextStyle(fontFamily: 'Kodchasan')),
                      )),
                       SizedBox(height: height / 25),
                      
                  Text(
                    'RECORD LABEL',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                   SizedBox(height: height / 45),
                  Container(
                      width: width,
                      height: height / 13,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: kPrimarys,
                            // width: 5,
                          ),
                          borderRadius: BorderRadius.circular(5),
                          color: kPrimary),
                      child: TextFormField(
                        decoration: InputDecoration(
                            labelText: '     e.g The Mountains Groups',
                            labelStyle: TextStyle(fontFamily: 'Kodchasan')),
                      )),
                       SizedBox(height: height / 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'YEAR RELEASED',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                           SizedBox(height: height / 45),
                          Container(
                              width: width / 3,
                              height: height / 13,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: kPrimarys,
                                    // width: 5,
                                  ),
                                  borderRadius: BorderRadius.circular(5),
                                  color: kPrimary),
                              child: Row(
                                children: [
                                  Text(
                                    '   Select Year',
                                    style: TextStyle(fontFamily: 'Kodchasan'),
                                  ),
                                  Icon(Icons.arrow_drop_down_rounded)
                                ],
                              )),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'GENRE',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                           SizedBox(height: height / 45),
                          Container(
                              width: width / 3,
                              height: height / 13,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: kPrimarys,
                                    // width: 5,
                                  ),
                                  borderRadius: BorderRadius.circular(5),
                                  color: kPrimary),
                              child: Row(
                                children: [
                                  Text(
                                    '   Hip Hop',
                                    style: TextStyle(fontFamily: 'Kodchasan'),
                                  ),
                                  Icon(Icons.arrow_drop_down_rounded)
                                ],
                              )),
                        ],
                      ),
                    ],
                  ),
                   SizedBox(height: height / 25),
                  ElevatedButton(
                      onPressed: () {},
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
                            'Save & Continue',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          Icon(Icons.arrow_forward_outlined)
                        ],
                      )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
