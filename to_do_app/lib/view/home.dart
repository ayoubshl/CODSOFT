import 'package:date_picker_timeline/date_picker_timeline.dart' as dpt;
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:to_do_app/model/custom_widget/customButton.dart';
import 'package:flutter_svg/flutter_svg.dart' as svg;

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  late String today;
  @override
  void initState() {
    super.initState();
    DateTime now = DateTime.now();
    today = DateFormat.yMMMMEEEEd().format(now);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Container(
          alignment: Alignment.center,
          child: const Text(
            "TASKER",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  today.replaceFirst(',', ',\n'),
                  style: const TextStyle(color: Colors.black, fontSize: 20),
                ),
                CustomButton(
                  text: '+ add task',
                  backgroundColor: const Color.fromARGB(255, 255, 127, 80),
                  onPressed: () {},
                ),
              ],
            ),
            const SizedBox(
              height: 17,
            ),
            dpt.DatePicker(
              DateTime.now(),
              width: 70,
              height: 100,
            ),
            // Container(
            //   decoration: BoxDecoration(
            //     border: Border.all(
            //       color: Colors.orange,
            //     ),
            //   ),
            // )

            const SizedBox(height: 12),
            SingleChildScrollView(
              child: Column(
                children: [
                  svg.SvgPicture.asset('assets/icons/list-check-solid.svg'),
                  const Text("here we go")
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
