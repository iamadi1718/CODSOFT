import 'dart:async';
import 'package:flutter/material.dart';


class StopwatchHome extends StatefulWidget {
  @override
  _StopwatchHomeState createState() => _StopwatchHomeState();
}

class _StopwatchHomeState extends State<StopwatchHome> {
  Stopwatch _stopwatch = Stopwatch();
  late Timer _timer;
  String _timeDisplay = '00 : 00 : 00';


  void _startTimer() {
    _timer = Timer.periodic(Duration(milliseconds: 100), (timer) {
      setState(() {
        _timeDisplay = _formatTime(_stopwatch.elapsed);
      });
    });
  }

  String _formatTime(Duration duration) {
    String minutes = (duration.inMinutes % 60).toString().padLeft(2, '0');
    String seconds = (duration.inSeconds % 60).toString().padLeft(2, '0');
    String milliseconds = (duration.inMilliseconds % 1000 ~/ 100).toString().padLeft(2,'0');
    return '$minutes:$seconds:$milliseconds';
  }

  void _startStopwatch() {
    _stopwatch.start();
    _startTimer();
  }

  void _stopStopwatch() {
    _stopwatch.stop();
    _timer.cancel();
  }

  void _resetStopwatch() {
    _stopwatch.reset();
    setState(() {
      _timeDisplay = '00 : 00 : 00';
    });
  }

  @override
  Widget build(BuildContext context) {

    final Size=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,



      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: Size.height*0.07,),
          Padding(
            padding: EdgeInsets.all(20),
            child: Text('Stopwatch',style: TextStyle(
              color: Colors.white,
              fontSize: 25,
            ),),
          ),
          SizedBox(height: Size.height*0.3,),

          Text(_timeDisplay, style: TextStyle(fontSize: 50,
            color: Colors.white,)),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: _startStopwatch,
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xfff0f757),
                    padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                  ),
                  child: Text('Start',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20
                    ),)
              ),
              SizedBox(width: 10),
              ElevatedButton(onPressed: _stopStopwatch,
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xfff0f757),
                    padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                  ),
                  child: Text('Stop',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),)),
              SizedBox(width: 10),
              ElevatedButton(onPressed: _resetStopwatch,
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xfff0f757),
                    padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                  ),
                  child: Text('Reset',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),)),
            ],
          ),
        ],
      ),
    );
  }
}
