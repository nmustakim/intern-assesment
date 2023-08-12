import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:internship_assesment_appifylab/screens/performance_screen.dart';


class PowerPlayScreen extends StatefulWidget {
  const PowerPlayScreen({super.key});

  @override
  State<PowerPlayScreen> createState() => _PowerPlayScreenState();
}

class _PowerPlayScreenState extends State<PowerPlayScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              height: 48,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const PerformanceScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFFEDA14)),
                  child: Text(
                    'Done',
                    style: GoogleFonts.poppins(color: Colors.black),
                  )),
            ),
          ),
        ],
      ),
      appBar: AppBar(
        title: Text(
          'Start Power play Overs',
          style: GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 18),
        ),
        toolbarHeight: 64,
        leading: Container(
          margin: const EdgeInsets.all(16),
          height: 32,
          width: 32,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6), color: const Color(0xFF16171D)),
          child: const Icon(Icons.navigate_before),
        ),
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xFF1F212A),
      ),
      backgroundColor: const Color(0xFF16171D),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              Text(
                'Power Play 1',
                style: GoogleFonts.poppins(fontSize: 15, color: Colors.white),
              ),
              const Center(child: PowerPlaySection()),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Power Play 2',
                style: GoogleFonts.poppins(fontSize: 15, color: Colors.white),
              ),
              const Center(child: PowerPlaySection()),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Power Play 3',
                style: GoogleFonts.poppins(fontSize: 15, color: Colors.white),
              ),
              const Center(child: PowerPlaySection()),
              const SizedBox(
                height: 25,
              ),
              Text(
                '*Batting power play over can be selected lated during scoring from the settings',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 24,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PowerPlaySection extends StatefulWidget {
  const PowerPlaySection({super.key});

  @override
  PowerPlaySectionState createState() => PowerPlaySectionState();
}

class PowerPlaySectionState extends State<PowerPlaySection> {
  List<int> selectedNumbers = [];

  void selectNumber(int number) {
    setState(() {
      selectedNumbers.add(number);
    });
  }
  void unselectNumber(int number){
    setState(() {
      selectedNumbers.remove(number);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: List.generate(
        20,
            (index) {
          int number = index + 1;
          bool isSelected = selectedNumbers.contains(number);

          return GestureDetector(
            onTap: () {
              if(isSelected){
                unselectNumber(number);
              }
              else if (selectedNumbers.isEmpty ||
                  number - 1 == selectedNumbers.last) {
                selectNumber(number);
              }

            },
            child: Container(
              margin: const EdgeInsets.all(5),
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                border: Border.all(width: 1,color: isSelected? const Color(0xFFFEDA14):Colors.black),
                
                borderRadius: BorderRadius.circular(2),
                color:const Color(0xFF16171D),
              ),
              child: Center(
                child: Text(
                  '$number',
                  style: GoogleFonts.poppins(fontSize: 16,color: Colors.white)
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}