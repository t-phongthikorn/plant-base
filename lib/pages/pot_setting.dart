import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class PotSettingPage extends StatefulWidget {

  const PotSettingPage({super.key});

  @override
  State<PotSettingPage> createState() => _PotSettingPageState();
}

class _PotSettingPageState extends State<PotSettingPage> {

  String? value = "Humidity";

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.06),
          const Text(
            "สถานะของกระถาง",
            style: TextStyle(
              fontFamily: "NotoSans",
              fontSize: 20,
              color: Colors.cyan,
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircularPercentIndicator(
                radius: 80,
                lineWidth: 12,
                percent: 0.7,
                center: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "50%",
                      style: TextStyle(
                        fontFamily: "NotoSans",
                        fontSize: 30,
                        color: Colors.cyan,
                      ),
                    ),
                    Text(
                      "ความชื้น",
                      style: TextStyle(
                        fontFamily: "NotoSans",
                        fontSize: 17,
                        color: Colors.cyan,
                      ),
                    ),
                  ],
                ),
                progressColor: Colors.cyan,
                backgroundColor: Colors.cyan.shade100,
                circularStrokeCap: CircularStrokeCap.round,
              ),
              CircularPercentIndicator(
                radius: 80,
                lineWidth: 12,
                percent: 0.7,
                center: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "50%",
                      style: TextStyle(
                        fontFamily: "NotoSans",
                        fontSize: 30,
                        color: Colors.cyan,
                      ),
                    ),
                    Text(
                      "ระดับน้ำที่เหลืออยู่",
                      style: TextStyle(
                        fontFamily: "NotoSans",
                        fontSize: 17,
                        color: Colors.cyan,
                      ),
                    ),
                  ],
                ),
                progressColor: Colors.cyan,
                backgroundColor: Colors.cyan.shade100,
                circularStrokeCap: CircularStrokeCap.round,
              ),
            ],
          ),
          Divider(
            color: Colors.grey[300],
            endIndent: 60,
            indent: 60,
            height: 80,
            thickness: 2,
          ),
          const Text(
            "การตั้งค่า",
            style: TextStyle(
              fontFamily: "NotoSans",
              fontSize: 20,
              color: Colors.green,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "การรดน้ำ",
                style: TextStyle(
                  fontFamily: "NotoSans",
                  fontSize: 20,
                  color: Colors.green,
                ),
              ),
              SizedBox(width: MediaQuery.of(context).size.width * 0.06, height:MediaQuery.of(context).size.height * 0.1 ,),
              Container(
                width: 200,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.cyan, width: 1),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: DropdownButton<String>(
                  value: value,
                  isExpanded: true,
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 4),
                  borderRadius: BorderRadius.circular(20),
                  underline: Container(),
                  onChanged: (String? value) {
                    setState(() {
                      this.value = value;
                    });
                  },
                  items: const [
                    DropdownMenuItem<String>(
                      value: "Humidity",
                      child: Text(
                        "ความชื้น",
                        style: TextStyle(
                          fontFamily: "NotoSans",
                          fontSize: 16
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          Container(
            color: Colors.grey,
            width: 200,
            height: 200,
          ),
          Divider(
            color: Colors.grey[300],
            endIndent: 60,
            indent: 60,
            height: 80,
            thickness: 2,
          ),
        ],
      ),
    );
  }

}