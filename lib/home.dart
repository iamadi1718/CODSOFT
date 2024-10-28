import 'package:alarmapp/alarmpage.dart';
import 'package:alarmapp/alarmset.dart';
import 'package:alarmapp/stopwatch.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {

  @override



  Widget build(BuildContext context) {
    final Size=MediaQuery.of(context).size;
    DateTime now=DateTime.now();
    return Scaffold(
      backgroundColor: Colors.black,

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: Size.height*0.05,),
          Row(
            children:[
              Padding(
                padding: EdgeInsets.all(20),
                child: Text('Clock',style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),),
              ),
              SizedBox(width: Size.width*0.6,),
              Icon(Icons.menu,
                color: Colors.white,),
            ],
          ),
          SizedBox(height: Size.height*0.03,),
          Text(
            ' ${DateFormat('jm').format(now)}' ,
            style: TextStyle(fontSize: 50,
              color: Colors.white,),
          ),
          Text(
            ' ${DateFormat('yMMMMEEEEd').format(now)}' ,
            style: TextStyle(fontSize: 15,
              color: Colors.white,),
          ),
          Padding(
            padding: EdgeInsets.all(20),

            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xff34344a),
              ),

              padding: EdgeInsets.symmetric(vertical: 40,horizontal: 15),


              child: Row(
                children: [
                  Column(
                    children: [
                      Text('New York',style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),),
                      Text('-6h',style: TextStyle(color: Colors.grey),)

                    ],
                  ),
                  SizedBox(width: Size.width*0.25,),
                  Text('10:30 AM',style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    letterSpacing: 1,
                  ),),

                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),

            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xff34344a),
              ),

              padding: EdgeInsets.symmetric(vertical: 40,horizontal: 15),


              child: Row(
                children: [
                  Column(
                    children: [
                      Text('Moscow',style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),),
                      Text('-3h',style: TextStyle(color: Colors.grey),)

                    ],
                  ),
                  SizedBox(width: Size.width*0.3,),
                  Text('6:30 PM',style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    letterSpacing: 1,
                  ),),

                ],
              ),
            ),
          ),

          SizedBox(height: Size.height*0.2,),




          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>AlarmPage()));
            },
            child: Icon(Icons.add,
              color: Colors.white,
              size: 50,),
          ),

        ],
      ),


    );
  }
}
