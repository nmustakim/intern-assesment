import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PowerPlayScreen(),
    );
  }
}

class PowerPlayScreen extends StatelessWidget {
  const PowerPlayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Row(
        children: [
          Expanded(
            child: Container(
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(

                      backgroundColor: Color(0xFFFEDA14)),
                  child: Text(
                    'Done',
                    style: GoogleFonts.poppins(color: Colors.black),
                  )),
            ),
          ),
        ],
      ),
      appBar: AppBar(
        title: Text('Start Power play Overs',style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 18),),
        toolbarHeight: 64,
        leading: Container(
          margin: EdgeInsets.all(16),
          height: 32,
          width: 32,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6), color: Color(0xFF16171D)),
       child: Icon(Icons.navigate_before),
        ),
        foregroundColor: Colors.white,
        backgroundColor: Color(0xFF1F212A),
      ),
      backgroundColor: Color(0xFF16171D),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30,),
              Text(
                'Power Play 1',
                style: GoogleFonts.poppins(fontSize: 15, color: Colors.white),
              ),
              Center(child: PowerPlaySection()),
              SizedBox(height: 25,),
              Text(
                'Power Play 2',
                style: GoogleFonts.poppins(fontSize: 15, color: Colors.white),
              ),
              Center(child: PowerPlaySection()),
              SizedBox(height: 25,),
              Text(
                'Power Play 3',
                style: GoogleFonts.poppins(fontSize: 15, color: Colors.white),
              ),
              Center(child: PowerPlaySection()),
              SizedBox(
                height: 42,
              ),
              Text(
                '*Batting power play over can be selected lated during scoring from the settings',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 24,
              ),

            ],
          ),
        ),
      ),
    );
  }
}

class PowerPlaySection extends StatelessWidget {
  const PowerPlaySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: List.generate(
        20,
        (index) => Container(
          margin: const EdgeInsets.all(5),
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: Color(0xFF1F212A),
            border: Border.all(width: 1),
            borderRadius: BorderRadius.circular(2),
          ),
          child: Center(
            child: Text(
              '${index + 1}',
              style: const TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
