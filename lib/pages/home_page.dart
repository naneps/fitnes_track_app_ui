import 'package:fitnes_track_app_ui/theme/colors.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome Back",
                      style: TextStyle(fontSize: 14, color: black),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Sopheamen",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: black),
                    ),
                  ],
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      color: black.withOpacity(0.03),
                      borderRadius: BorderRadius.circular(12)),
                  child: Center(
                    child: Icon(LineIcons.bell),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: double.infinity,
              height: 145,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                gradient: LinearGradient(colors: [secondary, primary]),
              ),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                  children: [
                    Flexible(
                        child: Container(
                      width: (size.width),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "BMI (Body Mass Index)",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: white),
                          ),
                          Text(
                            "You have a normal weight",
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                color: white),
                          ),
                          Container(
                            width: 95,
                            height: 35,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [fourthColor, thirdColor]),
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                              child: Text(
                                "View More",
                                style: TextStyle(fontSize: 13, color: white),
                              ),
                            ),
                          )
                        ],
                      ),
                    )),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient:
                            LinearGradient(colors: [fourthColor, thirdColor]),
                      ),
                      child: Center(
                        child: Text(
                          "20,3",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: white),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                  color: secondary.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Today Target",
                      style: TextStyle(
                          fontSize: 17,
                          color: black,
                          fontWeight: FontWeight.w600),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, "/today_target_detail");
                      },
                      child: Container(
                        width: 70,
                        height: 35,
                        decoration: BoxDecoration(
                            gradient:
                                LinearGradient(colors: [secondary, primary]),
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                          child: Text(
                            "Check",
                            style: TextStyle(fontSize: 13, color: white),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Activity Status",
              style: TextStyle(
                  fontSize: 18, fontWeight: FontWeight.bold, color: black),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                  color: secondary.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(30)),
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    child: LineChart(activityData()),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text(
                      "Heart Rate",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}

List<Color> gradientColors = [secondary, primary];
LineChartData activityData() {
  return LineChartData(
    gridData: FlGridData(
      show: false,
      drawVerticalLine: true,
    ),
    titlesData: FlTitlesData(
      show: false,
      leftTitles: SideTitles(
        showTitles: false,
      ),
    ),
    borderData: FlBorderData(
      show: false,
    ),
    minX: 0,
    maxX: 11,
    minY: 0,
    maxY: 6,
    lineBarsData: [
      LineChartBarData(
        spots: [
          FlSpot(0, 3),
          FlSpot(2.6, 2),
          FlSpot(4.9, 5),
          FlSpot(6.8, 3.1),
          FlSpot(8, 4),
          FlSpot(9.5, 3),
          FlSpot(11, 4),
        ],
        isCurved: false,
        colors: gradientColors,
        barWidth: 2,
        isStrokeCapRound: true,
        dotData: FlDotData(
          show: false,
        ),
        belowBarData: BarAreaData(
          show: true,
          colors:
              gradientColors.map((color) => color.withOpacity(0.3)).toList(),
        ),
      ),
    ],
  );
}
