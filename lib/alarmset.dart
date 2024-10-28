import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class alarmset extends StatefulWidget {
  const alarmset({super.key});

  @override
  State<alarmset> createState() => _alarmsetState();
}

class _alarmsetState extends State<alarmset> {
  @override
  Widget build(BuildContext context) {
    final Size=MediaQuery.of(context).size;
    bool lights=false;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          SizedBox(height: Size.height*0.05,),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.all(20),
                child: Text('Alarm',style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),),
              ),
              SizedBox(width: Size.width*0.6
                ,),
              Icon(Icons.more_vert,
                color: Colors.white,),
            ],
          ),
          GridView.count(
            crossAxisCount:2,
            shrinkWrap: true,
            scrollDirection: Axis.vertical,

            children: [
              Padding(
                padding: EdgeInsets.all(20),
                child:  Container(
                  padding: EdgeInsets.symmetric(vertical: 13,horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xff34344a),


                  ),
                  child: Column(
                    children: [
                      Text('Work',style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),),
                      SizedBox(height: Size.height*0.02,),
                      Row(
                        children: [
                          Text('8:30 ',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                            ),),
                          Text('AM',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),)
                        ],
                      ),
                      Row(
                        children: [
                          Text('S ',
                            style: TextStyle(
                              color: Colors.grey,
                            ),),
                          Text('M ' ,
                            style: TextStyle(
                              color: Colors.yellow,
                            ),),
                          Text('T ',
                            style: TextStyle(
                              color: Colors.yellow,
                            ),),
                          Text('W ',
                            style: TextStyle(
                              color: Colors.yellow,
                            ),),
                          Text('T ',
                            style: TextStyle(
                              color: Colors.grey,
                            ),),
                          Text('F ',
                            style: TextStyle(
                              color: Colors.yellow,
                            ),),
                          Text('S ',
                            style: TextStyle(
                              color: Colors.yellow,
                            ),),
                        ],
                      ),
                      Switch(

                        value: lights,
                        onChanged: (ischecked){
                          setState(() {
                            ischecked=lights;
                          });
                        },

                        activeColor: Color(0xfff0f757),

                      ),
                    ],

                  ),
                ),
              ),


              Padding(
                padding: EdgeInsets.all(20),
                child:  Container(
                  padding: EdgeInsets.symmetric(vertical: 13,horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xff34344a),


                  ),
                  child: Column(
                    children: [
                      Text('Exercise',style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),),
                      SizedBox(height: Size.height*0.02,),
                      Row(
                        children: [
                          Text('6:30 ',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                            ),),
                          Text('AM',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),)
                        ],
                      ),
                      Row(
                        children: [
                          Text('S ',
                            style: TextStyle(
                              color: Colors.grey,
                            ),),
                          Text('M ' ,
                            style: TextStyle(
                              color: Colors.yellow,
                            ),),
                          Text('T ',
                            style: TextStyle(
                              color: Colors.yellow,
                            ),),
                          Text('W ',
                            style: TextStyle(
                              color: Colors.yellow,
                            ),),
                          Text('T ',
                            style: TextStyle(
                              color: Colors.grey,
                            ),),
                          Text('F ',
                            style: TextStyle(
                              color: Colors.yellow,
                            ),),
                          Text('S ',
                            style: TextStyle(
                              color: Colors.yellow,
                            ),),
                        ],
                      ),
                      SwitchListTile(

                        value: lights,
                        onChanged: (bool value){
                          setState(() {
                            lights=value;
                          });
                        },
                        tileColor: Colors.grey,
                        activeColor: Color(0xfff0f757),

                      ),
                    ],

                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child:  Container(
                  padding: EdgeInsets.symmetric(vertical: 13,horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xff34344a),


                  ),
                  child: Column(
                    children: [
                      Text('Wake Up',style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),),
                      SizedBox(height: Size.height*0.02,),
                      Row(
                        children: [
                          Text('5:30 ',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                            ),),
                          Text('AM',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),)
                        ],
                      ),
                      Row(
                        children: [
                          Text('S ',
                            style: TextStyle(
                              color: Colors.grey,
                            ),),
                          Text('M ' ,
                            style: TextStyle(
                              color: Colors.yellow,
                            ),),
                          Text('T ',
                            style: TextStyle(
                              color: Colors.yellow,
                            ),),
                          Text('W ',
                            style: TextStyle(
                              color: Colors.yellow,
                            ),),
                          Text('T ',
                            style: TextStyle(
                              color: Colors.grey,
                            ),),
                          Text('F ',
                            style: TextStyle(
                              color: Colors.yellow,
                            ),),
                          Text('S ',
                            style: TextStyle(
                              color: Colors.yellow,
                            ),),
                        ],
                      ),
                      SwitchListTile(

                        value: lights,
                        onChanged: (bool value){
                          setState(() {
                            lights=value;
                          });
                        },
                        tileColor: Colors.grey,
                        activeColor: Color(0xfff0f757),

                      ),
                    ],

                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child:  Container(
                  padding: EdgeInsets.symmetric(vertical: 13,horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xff34344a),


                  ),
                  child: Column(
                    children: [
                      Text('Sleep',style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),),
                      SizedBox(height: Size.height*0.02,),
                      Row(
                        children: [
                          Text('8:30 ',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                            ),),
                          Text('PM',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),)
                        ],
                      ),
                      Row(
                        children: [
                          Text('S ',
                            style: TextStyle(
                              color: Colors.grey,
                            ),),
                          Text('M ' ,
                            style: TextStyle(
                              color: Colors.yellow,
                            ),),
                          Text('T ',
                            style: TextStyle(
                              color: Colors.yellow,
                            ),),
                          Text('W ',
                            style: TextStyle(
                              color: Colors.yellow,
                            ),),
                          Text('T ',
                            style: TextStyle(
                              color: Colors.grey,
                            ),),
                          Text('F ',
                            style: TextStyle(
                              color: Colors.yellow,
                            ),),
                          Text('S ',
                            style: TextStyle(
                              color: Colors.yellow,
                            ),),
                        ],
                      ),
                      SwitchListTile(

                        value: lights,
                        onChanged: (bool value){
                          setState(() {
                            lights=value;
                          });
                        },
                        tileColor: Colors.grey,
                        activeColor: Color(0xfff0f757),

                      ),
                    ],

                  ),
                ),
              ),

            ],
          ),
        ],
      ),
    );



  }
}
