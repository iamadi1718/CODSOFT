import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alarm App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AlarmPage(),
    );
  }
}

class AlarmPage extends StatefulWidget {
  @override
  _AlarmPageState createState() => _AlarmPageState();
}

class _AlarmPageState extends State<AlarmPage> {
  TimeOfDay? selectedTime;
  String alarmName = "";
  String selectedTone = "Default Tone";
  final List<String> tones = ['Default Tone', 'Tone 1', 'Tone 2', 'Tone 3'];

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (picked != null && picked != selectedTime) {
      setState(() {
        selectedTime = picked;
      });
    }
  }

  void _chooseTone(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          height: 200,
          child: Column(
            children: tones.map((tone) {
              return ListTile(
                title: Text(tone),
                onTap: () {
                  setState(() {
                    selectedTone = tone;
                  });
                  Navigator.pop(context);
                },
              );
            }).toList(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {

    final Size=MediaQuery.of(context).size;


    return Scaffold(
      backgroundColor: Colors.black,


      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Heading Section
              SizedBox(height: Size.height*0.04,),
              Text(
                'Set Alarm Time',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                ),
              ),
              SizedBox(height: 20),

              // Alarm Name Input
              TextField(
                decoration: InputDecoration(
                  labelText: 'Alarm Name',
                  fillColor: Color(0xffcfcfcf),
                  filled: true,
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) {
                  setState(() {
                    alarmName = value;
                  });
                },
              ),
              SizedBox(height: 20),

              // Time Display Section
              Container(
                decoration: BoxDecoration(
                  color: Colors.blue.shade50,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.blueAccent),
                ),
                padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                child: Center(
                  child: Text(
                    selectedTime != null
                        ? 'Alarm set for: ${selectedTime!.format(context)}'
                        : 'No Alarm Set',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),

              // Alarm Tone Selection
              ElevatedButton(
                onPressed: () => _chooseTone(context),
                child: Text('Select Alarm Tone: $selectedTone'),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff34344a),
                  padding: EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),

                  ),
                ),
              ),
              SizedBox(height: 30),

              // Time Picker Button
              ElevatedButton.icon(
                onPressed: () => _selectTime(context),
                icon: Icon(Icons.alarm, size: 28),
                label: Text(
                  'Pick Alarm Time',
                  style: TextStyle(fontSize: 18,
                  ),


                ),
                style: ElevatedButton.styleFrom(

                  padding: EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),

              SizedBox(height: Size.height*0.3,),

              // Set Alarm Button
              ElevatedButton(
                onPressed: () {
                  if (selectedTime != null && alarmName.isNotEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          'Alarm set for ${selectedTime!.format(context)}\n'
                              'Name: $alarmName\nTone: $selectedTone',
                        ),
                        duration: Duration(seconds: 2),
                      ),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Please enter alarm name and select time'),
                        duration: Duration(seconds: 2),
                      ),
                    );
                  }
                },
                child: Text(
                  'Set Alarm',
                  style: TextStyle(fontSize: 20,
                      color:Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xffcfcfcf),
                  padding: EdgeInsets.symmetric(vertical: 17),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
