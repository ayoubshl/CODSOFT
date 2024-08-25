import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:to_do_app/model/custom_widget/LabeledTextField.dart';

class AddTask extends StatefulWidget {
  const AddTask({super.key});

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  int? selectedPriority;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.teal,
          title:
              const Text("Add a Task", style: TextStyle(color: Colors.white)),
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          )),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              /***********************Title TextField***********************/
              const LabeledTextField(
                label: 'Title',
                hint: 'Enter task title',
              ),

              /***********************Description TextField***********************/
              const LabeledTextField(
                label: 'Description',
                hint: 'Enter task description',
              ),

              /***********************DueDate TextField***********************/
              const LabeledTextField(
                label: 'Date',
                hint: 'Enter the due date',
                suffixIcon: Icon(
                  Icons.calendar_today_outlined,
                  color: Colors.white,
                ),
              ),

              /***********************Start Time and End Time TextField***********************/
              const Row(
                children: [
                  Expanded(
                    child: LabeledTextField(
                      label: 'Start Time',
                      hint: 'Start',
                      suffixIcon: Icon(
                        Icons.access_time,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: LabeledTextField(
                      label: 'End Time',
                      hint: 'End',
                      suffixIcon: Icon(
                        Icons.access_time,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),

              /***********************Priority DropdownButton with Styling***********************/
              const SizedBox(height: 8),
              Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.symmetric(horizontal: 6),
                margin: const EdgeInsets.symmetric(horizontal: 16),
                child: const Text(
                  'priority',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                margin: const EdgeInsets.symmetric(horizontal: 15.0),
                decoration: BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.transparent),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<int>(
                    hint: const Text(
                      'Select Priority',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                    value: selectedPriority,
                    dropdownColor: Colors.teal,
                    icon:
                        const Icon(Icons.arrow_drop_down, color: Colors.white),
                    isExpanded: true,
                    items: const [
                      DropdownMenuItem(
                          value: 1,
                          child: Text(
                            'Low',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          )),
                      DropdownMenuItem(
                          value: 2,
                          child: Text(
                            'Medium',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          )),
                      DropdownMenuItem(
                          value: 3,
                          child: Text(
                            'Important',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          )),
                    ],
                    onChanged: (value) {
                      setState(() {
                        selectedPriority = value;
                      });
                    },
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Container(
                  margin: const EdgeInsets.only(top: 20),
                  alignment: Alignment.bottomCenter,
                  child: TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.teal,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 15)),
                    onPressed: () {},
                    child: const Text(
                      'save Task',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
