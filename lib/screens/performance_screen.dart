import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PerformanceScreen extends StatefulWidget {
  const PerformanceScreen({super.key});

  @override
  PerformanceScreenState createState() => PerformanceScreenState();
}

class PerformanceScreenState extends State<PerformanceScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF15171D),
      appBar: AppBar(
        elevation: 0,
        title: Text('Performance'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.centerLeft,
              children: [
                Container(
                  height: 200,
                  width: double.infinity,
                  color: Colors.blue,
                  child: Image.asset(
                    'assets/images/cover_pic.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 20,
                  left: 20,
                  child: Image.asset(
                    'assets/images/pro_pic.png',

                  ),
                ),
                Positioned(
                  top: 106,
                  left: 16,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                    Column(children: [
                      Text('Moeen Ali',style: GoogleFonts.poppins(fontWeight: FontWeight.w700,color: Colors.white),),Text('England',style: GoogleFonts.poppins(color: Colors.white),)
                    ],),
                    SizedBox(width: 96,),
                    Column(children: [
                      Text('Right Hand',style: GoogleFonts.poppins(fontWeight: FontWeight.w700,color: Colors.white),),Text('Batting',style: GoogleFonts.poppins(color: Colors.white),)
                    ],),
                    SizedBox(width: 24,),
                    Column(children: [
                      Text('Right Hand',style: GoogleFonts.poppins(fontWeight: FontWeight.w700,color: Colors.white),),Text('Bowling',style: GoogleFonts.poppins(color: Colors.white),)
                    ],)
                  ],),
                )
              ],
            ),
            SizedBox(height: 20),

            SizedBox(height: 20),
            TabBar(
              indicatorColor: Color(0xFFFEDA14),
              controller: _tabController,
              tabs: [
                Tab(text: 'Booting'),
                Tab(text: 'Bowling'),
                Tab(text: 'Compare'),
                Tab(text: 'Face off'),
              ],
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Table(
                border: TableBorder.all(color: Colors.transparent),
                children: [
                  TableRow(
                    children: [
                      buildTableCell('Sl.'),
                      buildTableCell('Date'),
                      buildTableCell('Innings'),
                      buildTableCell('Score'),
                      buildTableCell('Out'),
                      buildTableCell('Ov'),
                    ],
                  ),
                  TableRow(
                    children: [
                      buildTableCell('1'),
                      buildTableCell('2023-08-12'),
                      buildTableCell('1st'),
                      buildTableCell('100'),
                      buildTableCell('1'),
                      buildTableCell('10.2'),
                    ],
                  ),
                  TableRow(
                    children: [
                      buildTableCell('1'),
                      buildTableCell('2023-08-12'),
                      buildTableCell('1st'),
                      buildTableCell('100'),
                      buildTableCell('1'),
                      buildTableCell('10.2'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildContainer(String text1, String text2, String text3) {
    return Container(height: 100, width: 100, color: Colors.grey);
  }

  Widget buildTableCell(String text) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Text(
        text,
        style:GoogleFonts.poppins(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w400),
      ),
    );
  }
}
