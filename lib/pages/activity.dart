import 'package:banking_ui/widgets/time_option_button.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class Activity extends StatelessWidget {
  const Activity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton.outlined(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios_new,
          ),
        ),
        title: const Text(
          "Activity",
          style: TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton.outlined(
            onPressed: () {},
            icon: const Icon(
              Icons.more_horiz,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  3,
                  (index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 360,
                      height: 100,
                      decoration: BoxDecoration(
                        color: (index % 2 == 0)
                            ? const Color.fromARGB(255, 18, 80, 98)
                            : Colors.black,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Row(
                          children: [
                            const Text(
                              "Smart Card",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const Spacer(),
                            const Text(
                              "**** 6407",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 12.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CircleAvatar(
                                    radius: 15,
                                    backgroundColor:
                                        Colors.white.withOpacity(0.8),
                                  ),
                                  Transform.translate(
                                    offset: const Offset(-10, 0),
                                    child: CircleAvatar(
                                      radius: 15,
                                      backgroundColor:
                                          Colors.white.withOpacity(0.8),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              padding: const EdgeInsets.all(12),
              width: double.maxFinite,
              height: 360,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey[300]!),
                borderRadius: BorderRadius.circular(18),
              ),
              child: Column(
                children: [
                  const Text(
                    "Total Spending",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    "KSH 25,000",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 12),
                  const TimeOptionsRow(),
                  const SizedBox(height: 16),
                  Expanded(
                    child: LineChart(
                      LineChartData(
                          gridData: const FlGridData(show: false),
                          titlesData: FlTitlesData(
                            leftTitles: const AxisTitles(
                              sideTitles: SideTitles(showTitles: false),
                            ),
                            bottomTitles: AxisTitles(
                              sideTitles: SideTitles(
                                showTitles: true,
                                getTitlesWidget: (value, meta) {
                                  const tiles = [
                                    'S',
                                    'M',
                                    'T',
                                    'W',
                                    'T',
                                    'F',
                                    'S'
                                  ];
                                  final index = value.toInt();
                                  if (index >= 0 && index < tiles.length) {
                                    return Text(
                                      tiles[index],
                                      style:
                                          const TextStyle(color: Colors.grey),
                                    );
                                  }
                                  return const Text("");
                                },
                                reservedSize: 24,
                                interval: 1,
                              ),
                            ),
                            rightTitles: const AxisTitles(
                              sideTitles: SideTitles(showTitles: false),
                            ),
                            topTitles: const AxisTitles(
                              sideTitles: SideTitles(showTitles: false),
                            ),
                          ),
                          borderData: FlBorderData(show: false),
                          lineBarsData: [
                            LineChartBarData(
                              spots: [
                                const FlSpot(0, 2),
                                const FlSpot(1, 1),
                                const FlSpot(2, 4),
                                const FlSpot(3, 7),
                                const FlSpot(4, 3),
                                const FlSpot(5, 4),
                                const FlSpot(6, 6),
                              ],
                              isCurved: true,
                              color: Colors.teal,
                              barWidth: 3,
                              dotData: const FlDotData(show: false),
                              belowBarData: BarAreaData(
                                  show: true,
                                  color: Colors.teal.withOpacity(0.07)),
                            )
                          ]),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Transactions",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const Row(
                  children: [
                    Text(
                      "All",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.teal,
                    )
                  ],
                ),
                Column(
                  children: List.generate(
                      3,
                      (index) => const ListTile(
                            leading: CircleAvatar(
                              backgroundColor:
                                  Color.fromARGB(255, 239, 245, 245),
                              child: Icon(
                                Icons.payment_rounded,
                                color: Colors.blue,
                              ),
                            ),
                            title: Text(
                              "SmartPay Kit",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            subtitle: Text("UI8.net"),
                            trailing: Text(
                              "KSH 30,000",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                              ),
                            ),
                          )),
                )
              ],
            )
          ],
        ),
      )),
    );
  }
}
