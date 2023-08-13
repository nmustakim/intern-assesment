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
      backgroundColor: const Color(0xFF15171D),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1F212A),
        elevation: 0,
        title: const Text('Performance'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                SizedBox(
                  height: 164,
                  width: double.infinity,
                  child: Stack(
                    children: [
                      Image.asset(
                        'assets/images/cover.png',
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        'assets/images/cover_pic.png',
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 20,left: 16),
                      child: Image.asset(
                        'assets/images/pro_pic.png',
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20,right: 16),
                      height: 30,
                      child: OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                              side: const BorderSide(color: Color(0xFFFEDA14))),
                          child: Text(
                            'Follow',
                            style: GoogleFonts.poppins(color: Colors.white),
                          )),
                    ),
                  ],
                ),

                Positioned(
                  top: 106,
                  left: 16,
                  child: Container(

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text(
                              'Moeen Ali',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white),
                            ),
                            Text(
                              'England',
                              style: GoogleFonts.poppins(color: Colors.white),
                            )
                          ],
                        ),
                        const SizedBox(
                          width: 76,
                        ),
                        Column(
                          children: [
                            Text(
                              'Right Hand',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white),
                            ),
                            Text(
                              'Batting',
                              style: GoogleFonts.poppins(color: Colors.white),
                            )
                          ],
                        ),
                        const SizedBox(
                          width: 24,
                        ),
                        Column(
                          children: [
                            Text(
                              'Right Hand',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white),
                            ),
                            Text(
                              'Bowling',
                              style: GoogleFonts.poppins(color: Colors.white),
                            )
                          ],
                        ),

                      ],
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 20),
            TabBar(
              indicatorColor: const Color(0xFFFEDA14),
              controller: _tabController,
              tabs: const [
                Tab(text: 'Booting'),
                Tab(text: 'Bowling'),
                Tab(text: 'Compare'),
                Tab(text: 'Face off'),
              ],
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.only(left: 16),
              height: 43,
              color: const Color(0xFF1F212A),
              child: Row(

                children: [
                  Text('Current Form',style: GoogleFonts.poppins(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 18),)
                  ,
                  const Expanded(child: SizedBox()),
                  Container(
                      width: 27,
                      height: 27,
                      decoration: BoxDecoration(
                          color: const Color(0xFF16171D),
                          borderRadius: BorderRadius.circular(6)),
                      child: Image.asset('assets/images/Union.png')),
                  const SizedBox(width: 8),
                  Container(
                      width: 27,
                      height: 27,
                      decoration: BoxDecoration(
                          color: const Color(0xFF16171D),
                          borderRadius: BorderRadius.circular(6)),
                      child: Image.asset('assets/images/Vector.png')),
                  const SizedBox(
                    width: 16,
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
              child: Center(
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
                        buildTableCell('Team A VS Team C '),
                        buildTableCell('100'),
                        buildTableCell('1'),
                        buildTableCell('10.2'),
                      ],
                    ),
                    TableRow(
                      children: [
                        buildTableCell('1'),
                        buildTableCell('2023-08-12'),
                        buildTableCell('Team A VS Team C '),
                        buildTableCell('100'),
                        buildTableCell('1'),
                        buildTableCell('10.2'),
                      ],
                    ),
                    TableRow(
                      children: [
                        buildTableCell('1'),
                        buildTableCell('2023-08-12'),
                        buildTableCell('Team A VS Team C '),
                        buildTableCell('100'),
                        buildTableCell('1'),
                        buildTableCell('10.2'),
                      ],
                    ),
                    TableRow(
                      children: [
                        buildTableCell('1'),
                        buildTableCell('2023-08-12'),
                        buildTableCell('Team A VS Team C '),
                        buildTableCell('100'),
                        buildTableCell('1'),
                        buildTableCell('10.2'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Center(
                child: Text(
              'View all',
              style: GoogleFonts.poppins(color: const Color(0xFFFF9B71)),
            )),
            const SizedBox(height: 43),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                height: 360,
                child: GridView(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16),
                  children: [
                    buildContainer('77.85', 'Strike Rate', 'Last 5 innings'),
                    buildContainer('39.50', 'Avg', 'Last 5 innings'),
                    buildContainer('18', '4s', 'Last 5 innings'),
                    buildContainer('12', '6s', 'Last 5 innings'),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildContainer(String text1, String text2, String text3) {
    return Container(
      height: 134,
      width: 183,
      color: const Color(0xFF1F212A),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text1,
              style: GoogleFonts.poppins(
                  fontSize: 25,
                  color: const Color(
                    0xFFFEDA14,
                  )),
            ),
            Text(
              text2,
              style: GoogleFonts.poppins(color: Colors.white),
            ),
            Text(
              text3,
              style: GoogleFonts.poppins(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }

  Widget buildTableCell(String text) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(8),
      child: Text(
        text,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: GoogleFonts.poppins(

            color: Colors.white, fontSize: 12, fontWeight: FontWeight.w400),
      ),
    );
  }
}
