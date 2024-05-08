import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';


class MinigameHome extends StatelessWidget{
  const MinigameHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'LOGO',
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
            },
          ),

          title: Image.asset('assets/binny.png', width: 70,),

          actions: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.favorite_border_outlined,
                semanticLabel: 'favorite',
              ),
              onPressed: (){
                print('favorite button');
              },
            ),

            IconButton(
              icon: const Icon(
                Icons.format_align_left,
                semanticLabel: '???',
              ),
              onPressed: (){
                Navigator.pop(context);
                },
            ),

          ],

          backgroundColor: Colors.grey[300],
        ),
        body: Padding(
          padding: EdgeInsets.all(15),
          child: ListView(
            children: <Widget>[
              Container(
                width: double.infinity,
                child: const Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        'How to',
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.end,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: 6),
                        child: Text(
                          'แยก...',
                          style: TextStyle(
                            fontSize: 32,
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ),
                  ],
                ),
              ),


              Container(
                width: double.infinity,
                child: Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.topCenter,
                  children: <Widget>[
                    Positioned(
                      child: SizedBox(
                        width: double.infinity,
                        child: Image.asset(
                            'assets/Frame364.png'
                        ),
                      ),
                    ),
                    Positioned(
                      top: 90,
                      right: 45,
                      child: GestureDetector(
                        onTap: () {
                        },
                        child: Image.asset(
                          'assets/1.png', width: 105,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 150,
                      left: 52,
                      child: SizedBox(
                        width: 120,
                        child: Image.asset(
                            'assets/2.png'
                        ),
                      ),
                    ),
                    Positioned(
                      top: 235,
                      right: 50,
                      child: SizedBox(
                        width: 120,
                        child: Image.asset(
                            'assets/3.png'
                        ),
                      ),
                    ),
                    Positioned(
                      top: 310,
                      left: 82,
                      child: SizedBox(
                        width: 120,
                        child: Image.asset(
                            'assets/4.png'
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(

                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.black
                ),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Image.asset('assets/Ranking_Icon.png', width: 50,),
                        Expanded(
                          child: Row(
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'การจัดอันดับ',
                                    style: TextStyle(
                                      fontSize: 24,
                                      color: Colors.white,),
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Icon(Icons.autorenew,
                                          color: Colors.white),
                                      Text(
                                        '13:02:55',
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.white
                              ),
                              borderRadius: BorderRadius.circular(40),

                            ),
                            padding: EdgeInsets.all(5),
                            child: Text(
                              'คุณอยู่อันดับ 35',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(10),
                          color: Colors.white,
                          child: Column(
                            children: <Widget>[
                              Row(
                                children: [
                                  Expanded(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          'อันดับที่ 1',
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Expanded(
                                          child: Align(
                                            alignment: Alignment.centerRight,
                                            child: Text(
                                              '+10 bunny points',
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  color: Colors.green
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Image.asset(
                                    'assets/profile_pic.png',
                                    width: 40,
                                  ),
                                  Text(
                                    'Teewara I.',
                                    style: TextStyle(
                                        fontSize: 14
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: <Widget>[
                                        Text(
                                          '873',
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold
                                          ),
                                        ),
                                        Text(
                                          'คะแนนสะสม',
                                          style: TextStyle(
                                              fontSize: 12
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
